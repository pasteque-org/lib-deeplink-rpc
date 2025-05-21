// ignore_for_file: comment_references

import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:deeplink_rpc/src/data/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

/// Represents the outcome of a Deeplink RPC operation before it is sent as a response.
///
/// This is an intermediate representation that holds either a success [result] or a [failure]
/// along with the original [request] (if available, especially for failures).
/// It's used internally by the server before constructing the final [DeeplinkRpcResponse].
@freezed
sealed class DeeplinkRpcResult with _$DeeplinkRpcResult {
  const DeeplinkRpcResult._();

  /// Creates a [DeeplinkRpcResult] representing a failure.
  ///
  /// Requires the [failure] details (a [DeeplinkRpcFailure] object).
  /// Optionally, the original [request] can be included.
  const factory DeeplinkRpcResult.failure({
    required final DeeplinkRpcFailure failure,
    final DeeplinkRpcRequest? request,
  }) = _DeeplinkRpcResultFailure;

  /// Creates a [DeeplinkRpcResult] representing a success.
  ///
  /// Requires the original [request] and the [result] payload.
  const factory DeeplinkRpcResult.success({
    required final DeeplinkRpcRequest request,
    final result,
  }) = _DeeplinkRpcResultSuccess;
}

/// Extension methods for [DeeplinkRpcResult] to convert it to a [DeeplinkRpcResponse].
extension DeeplinkRpcResultExt on DeeplinkRpcResult {
  /// Converts this [DeeplinkRpcResult] to a [DeeplinkRpcResponse].
  ///
  /// Returns `null` if the original request is missing in a failure result.
  DeeplinkRpcResponse? toResponse() => switch (this) {
    _DeeplinkRpcResultFailure(:final failure, :final request) =>
      request == null
          ? null
          : DeeplinkRpcResponse.failure(nonce: request.nonce, failure: failure),
    _DeeplinkRpcResultSuccess(:final request, :final result) =>
      DeeplinkRpcResponse.success(nonce: request.nonce, result: result),
  };
}
