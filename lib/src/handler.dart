import 'dart:async';

import 'package:deeplink_rpc/src/data/request.dart';
import 'package:deeplink_rpc/src/data/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'handler.freezed.dart';

/// Route receiving a Deeplink
///
/// Deeplink path follows the format `/<parametrable_path_prefix>/<base64_payload>`
@freezed
abstract class DeeplinkRpcRoute with _$DeeplinkRpcRoute {
  /// Creates a [DeeplinkRpcRoute].
  ///
  /// The [pathFirstSegment] is the first part of the deeplink path used for routing.
  const factory DeeplinkRpcRoute(final String pathFirstSegment) =
      _DeeplinkRpcRoute;
  const DeeplinkRpcRoute._();

  static RegExp get _pathRegex => RegExp('/.*/(?<data>[a-zA-Z0-9-_=]*)');

  /// Checks if the given [path] matches the route structure.
  bool matches(final String path) => _pathRegex.hasMatch(path);

  /// Extracts the base64 encoded data payload from the given [path].
  /// Returns `null` if the path is null or if no data can be extracted.
  static String? getData(final String? path) {
    if (path == null) {
      return null;
    }

    final matches = _pathRegex.allMatches(path);
    if (matches.isEmpty) {
      return null;
    }
    return matches.first.namedGroup('data');
  }
}

/// Base class for handling Deeplink RPC messages.
abstract class DeeplinkRpcHandler {
  /// The route that this handler is responsible for.
  DeeplinkRpcRoute get route;
}

/// A handler for incoming [DeeplinkRpcRequest] messages.
@freezed
abstract class DeeplinkRpcRequestHandler
    with _$DeeplinkRpcRequestHandler
    implements DeeplinkRpcHandler {
  /// Creates a [DeeplinkRpcRequestHandler].
  ///
  /// Requires a [route] to match and a [handle] function to process the request.
  const factory DeeplinkRpcRequestHandler({
    required final DeeplinkRpcRoute route,
    required final FutureOr<Map<String, dynamic>> Function(
      DeeplinkRpcRequest request,
    )
    handle,
  }) = _DeeplinkRpcRequestHandler;
  const DeeplinkRpcRequestHandler._();
}

/// A handler for incoming [DeeplinkRpcResponse] messages.
@freezed
abstract class DeeplinkRpcResponseHandler
    with _$DeeplinkRpcResponseHandler
    implements DeeplinkRpcHandler {
  /// Creates a [DeeplinkRpcResponseHandler].
  ///
  /// Requires a [route] to match and a [handle] function to process the response.
  const factory DeeplinkRpcResponseHandler({
    required final DeeplinkRpcRoute route,
    required final FutureOr<void> Function(DeeplinkRpcResponse response) handle,
  }) = _DeeplinkRpcResponseHandler;
  const DeeplinkRpcResponseHandler._();
}
