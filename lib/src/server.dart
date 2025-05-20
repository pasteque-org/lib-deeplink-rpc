import 'package:deeplink_rpc/src/codec.dart';
import 'package:deeplink_rpc/src/data/failure.dart';
import 'package:deeplink_rpc/src/data/request.dart';
import 'package:deeplink_rpc/src/data/response.dart';
import 'package:deeplink_rpc/src/data/result.dart';
import 'package:deeplink_rpc/src/handler.dart';
import 'package:deeplink_rpc/src/receiver.dart';
import 'package:deeplink_rpc/src/url_launcher.dart';
import 'package:logging/logging.dart';

// /request_endpoint/H4sIAMMDNmcA/03LQQ7CIBCF4bvMWqQgqHAKN67NKGPSBCmFtolpeneJkOjuzeT/VugdWFBnZzqFR6ZIaKZQd+zeHZ5MO+NInCQqYWAHicaZ8nRNvphMaaGEMVrO696Xg7fmRsHFoQ/Tl0X/rujhewpTRXU3VIp/EjHhK4Ndm7ikIYriF/QziRL83hKs3LYPvnywZskAAAA=
// /request_endpoint/H4sIAN8ENmcA_03LwQoCIRDG8XeZcyZuSa5P0aVzuDqBYK6N7kIs--5JCnX7Zvj_NvAONDhjpZokMinQsbMQJ2Yuo2OjFY9JOasGi3AAwteCudwoVJORViSTkua87WM9eG_uGF2afSxflsK7IRs8xtJQ2x3V4p8kQ-aZQW9dXGlOovrVhAVFDX7vAfSw7x9qXXzsyQAAAA==
/// A server for receiving and processing Deeplink RPC requests.
///
/// It decodes incoming request payloads, routes them to the appropriate [DeeplinkRpcRequestHandler],
/// executes the handler, and sends the response back to the client via a deeplink.
class DeeplinkRpcServer
    extends BaseDeeplinkRpcReceiver<DeeplinkRpcRequestHandler> {
  /// Creates a [DeeplinkRpcServer].
  ///
  /// An optional [urlLauncher] can be provided for custom URL launching behavior.
  /// An optional [codec] can be provided for custom message encoding/decoding.
  DeeplinkRpcServer({
    final UrlLauncher? urlLauncher,
    final DeeplinkRpcCodec? codec,
  }) : codec = codec ?? const DeeplinkRpcCodec(),
       urlLauncher = urlLauncher ?? const UrlLauncher();

  static final _logger = Logger('DeeplinkRpcRequest');

  /// The URL launcher used to send responses back to the client.
  final UrlLauncher urlLauncher;

  /// The codec used for encoding and decoding RPC messages.
  final DeeplinkRpcCodec codec;

  Future<DeeplinkRpcResult> _handle(final String? path) async {
    try {
      _logger.info('Handles RPC call');

      final data = DeeplinkRpcRoute.getData(path);
      if (data == null) {
        return const DeeplinkRpcResult.failure(
          failure: DeeplinkRpcFailure(
            code: DeeplinkRpcFailure.kInvalidRequest,
            message: 'Failed to extract data from path',
          ),
        );
      }
      final request = _decodeRequest(data);

      final handler = handlerForPath(path);
      if (handler == null) {
        return DeeplinkRpcResult.failure(
          request: request,
          failure: DeeplinkRpcFailure(
            data: request,
            code: DeeplinkRpcFailure.kInvalidRequest,
            message: 'No handler for path $path',
          ),
        );
      }

      try {
        final result = await handler.handle(request);

        _logger.info('RPC call handled');
        return DeeplinkRpcResult.success(request: request, result: result);
      } on Exception catch (e) {
        if (e is DeeplinkRpcFailure) {
          return DeeplinkRpcResult.failure(failure: e, request: request);
        }
        return DeeplinkRpcResult.failure(
          failure: const DeeplinkRpcFailure(
            code: DeeplinkRpcFailure.kServerError,
          ),
          request: request,
        );
      }
    } on Exception catch (e, stack) {
      _logger.severe('An error occurred', e, stack);
      return const DeeplinkRpcResult.failure(
        failure: DeeplinkRpcFailure(code: DeeplinkRpcFailure.kServerError),
      );
    }
  }

  /// Handles an incoming deeplink [path] that represents an RPC request.
  ///
  /// This method processes the request, executes the appropriate handler,
  /// and sends the response back to the client using the `replyUrl` from the request.
  Future<void> handle(final String? path) async {
    final result = await _handle(path);

    final request = result.request;
    final response = result.toResponse();
    if (request == null || response == null) {
      _logger.warning('Impossible to send RPC result back', response?.failure);
      return;
    }

    await urlLauncher.launchUrl(
      Uri.parse('${request.replyUrl}/${_encodeResponse(response)}'),
    );
  }

  DeeplinkRpcRequest _decodeRequest(final Object? argument) {
    if (argument is! String) {
      throw const DeeplinkRpcFailure(code: DeeplinkRpcFailure.kInvalidRequest);
    }

    return DeeplinkRpcRequest.fromJson(codec.decode(argument));
  }

  String _encodeResponse(final DeeplinkRpcResponse response) =>
      codec.encode(response.toJson());
}
