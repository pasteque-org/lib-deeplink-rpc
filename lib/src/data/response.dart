import 'package:deeplink_rpc/src/data/failure.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

/// Represents an RPC response to be sent back via a deeplink.
///
/// It contains the original request [nonce] and either a [result] on success
/// or a [failure] object on error. A response cannot have both.
@JsonSerializable(includeIfNull: false)
class DeeplinkRpcResponse {
  /// Creates a [DeeplinkRpcResponse].
  ///
  /// Requires the original request [nonce].
  /// Exactly one of [failure] or [result] must be provided.
  const DeeplinkRpcResponse({required this.nonce, this.failure, this.result})
    : assert(
        failure == null || result == null,
        'A response cannot be both success and failure.',
      );

  /// Creates a [DeeplinkRpcResponse] instance from a JSON map.
  factory DeeplinkRpcResponse.fromJson(final Map<String, dynamic> json) =>
      _$DeeplinkRpcResponseFromJson(json);

  /// Creates a success [DeeplinkRpcResponse].
  ///
  /// Requires the original request [nonce] and the [result] payload.
  factory DeeplinkRpcResponse.success({
    required final String nonce,
    final result,
  }) => DeeplinkRpcResponse(nonce: nonce, result: result);

  /// Creates a failure [DeeplinkRpcResponse].
  ///
  /// Requires the original request [nonce] and the [failure] details.
  factory DeeplinkRpcResponse.failure({
    required final String nonce,
    required final DeeplinkRpcFailure failure,
  }) => DeeplinkRpcResponse(nonce: nonce, failure: failure);

  /// The unique identifier of the original request.
  final String nonce;

  /// The failure details if the request was unsuccessful. `null` for a successful response.
  final DeeplinkRpcFailure? failure;

  /// The result payload if the request was successful. `null` for a failed response.
  final dynamic result;

  /// Allows to process the response by providing separate handlers for [failure] and [success] cases.
  ///
  /// Returns the result of the executed handler.
  T map<T>({
    required final T Function(DeeplinkRpcFailure failure) failure,
    required final T Function(T result) success,
  }) {
    if (this.failure != null) {
      return failure(this.failure!);
    }
    return success(result);
  }

  /// Converts this [DeeplinkRpcResponse] instance to a JSON map.
  Map<String, dynamic> toJson() => _$DeeplinkRpcResponseToJson(this);
}
