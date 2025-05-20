import 'dart:async';
import 'dart:ui';

import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:deeplink_rpc/src/codec.dart';
import 'package:deeplink_rpc/src/data/result.dart';
import 'package:deeplink_rpc/src/receiver.dart';
import 'package:deeplink_rpc/src/url_launcher.dart';
import 'package:logging/logging.dart';

class _RunningRequest {
  _RunningRequest({
    required final VoidCallback onTimeout,
    final Duration? timeout,
  }) {
    if (timeout != null) {
      timer = Timer(timeout, onTimeout);
    }
  }
  final completer = Completer<DeeplinkRpcResponse>();
  late final Timer? timer;
}

/// A client for sending Deeplink RPC requests and handling responses.
class DeeplinkRpcClient {
  /// Creates a [DeeplinkRpcClient].
  ///
  /// An optional [urlLauncher] can be provided for custom URL launching behavior.
  /// An optional [codec] can be provided for custom message encoding/decoding.
  DeeplinkRpcClient({
    final UrlLauncher? urlLauncher,
    final DeeplinkRpcCodec? codec,
  }) : _codec = codec ?? const DeeplinkRpcCodec(),
       _urlLauncher = urlLauncher ?? const UrlLauncher() {
    _deeplinkRpcReceiver = _DeeplinkRpcResponseReceiver(codec: _codec);
  }

  final UrlLauncher _urlLauncher;
  final DeeplinkRpcCodec _codec;
  final _logger = Logger('DeeplinkRPCClient');
  final _runningRequests = <String, _RunningRequest>{};

  late final _DeeplinkRpcResponseReceiver _deeplinkRpcReceiver;

  void _registerResponseHandler(final DeeplinkRpcRequest request) {
    _deeplinkRpcReceiver.registerHandler(
      DeeplinkRpcResponseHandler(
        route: DeeplinkRpcRoute(Uri.parse(request.replyUrl).pathSegments.first),
        handle: _completeRequest,
      ),
    );
  }

  void _completeRequest(final DeeplinkRpcResponse response) {
    _logger.fine('Request completed $response');

    final runningRequest = _runningRequests[response.nonce];

    if (runningRequest == null) {
      return;
    }

    runningRequest.completer.complete(response);

    _runningRequests.remove(response.nonce);
  }

  /// Handles an incoming deeplink response.
  /// Returns `true` if the response was handled, `false` otherwise.
  bool handleResponse(final String? path) {
    if (!_deeplinkRpcReceiver.canHandle(path)) {
      return false;
    }

    unawaited(_deeplinkRpcReceiver.handle(path));
    return true;
  }

  /// Sends a [DeeplinkRpcRequest] and waits for a response.
  ///
  /// Throws a [DeeplinkRpcFailure] if a request with the same ID is already running.
  /// Returns a [DeeplinkRpcResponse].
  Future<DeeplinkRpcResponse> send({
    required final DeeplinkRpcRequest request,
    final Duration? timeout,
  }) async {
    if (_runningRequests.containsKey(request.nonce)) {
      return DeeplinkRpcResponse.failure(
        nonce: request.nonce,
        failure: DeeplinkRpcFailure(
          code: DeeplinkRpcFailure.kInvalidRequest,
          message: 'A request with id ${request.nonce} already running.',
        ),
      );
    }

    final url = Uri.parse('${request.requestUrl}/${_encodeRequest(request)}');

    _logger.fine('Attempt to send request $url');

    _registerResponseHandler(request);

    final runningRequest = _RunningRequest(
      timeout: timeout,
      onTimeout: () {
        _completeRequest(
          DeeplinkRpcResponse.failure(
            nonce: request.nonce,
            failure: const DeeplinkRpcFailure(
              code: DeeplinkRpcFailure.kTimeout,
              message: 'Request timeout.',
            ),
          ),
        );
      },
    );
    _runningRequests[request.nonce] = runningRequest;

    await _urlLauncher.launchUrl(url);

    return runningRequest.completer.future;
  }

  String _encodeRequest(final DeeplinkRpcRequest request) =>
      _codec.encode(request.toJson());
}

/// Receives and decodes DeeplinkRpcRequests.
class _DeeplinkRpcResponseReceiver
    extends BaseDeeplinkRpcReceiver<DeeplinkRpcResponseHandler> {
  _DeeplinkRpcResponseReceiver({required this.codec});

  static final _logger = Logger('DeeplinkRpcResponse');

  final DeeplinkRpcCodec codec;

  Future<void> handle(final String? path) async {
    try {
      _logger.info('Handles RPC response');

      final handler = handlerForPath(path);
      if (handler == null) {
        throw DeeplinkRpcFailure(
          code: DeeplinkRpcFailure.kInvalidRequest,
          message: 'No handler for path $path',
        );
      }

      final data = DeeplinkRpcRoute.getData(path);

      if (data == null) {
        throw const DeeplinkRpcFailure(
          code: DeeplinkRpcFailure.kInvalidRequest,
          message: 'Failed to extract data from path',
        );
      }

      final response = DeeplinkRpcResponse.fromJson(codec.decode(data));

      await handler.handle(response);

      _logger.info('RPC call handled');
    } on Exception catch (e, stack) {
      _logger.info('An error occurred', e, stack);
      throw const DeeplinkRpcResult.failure(
        failure: DeeplinkRpcFailure(code: DeeplinkRpcFailure.kServerError),
      );
    }
  }
}
