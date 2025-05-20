import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// Represents an RPC request to be sent or received via a deeplink.
///
/// It contains the target [requestUrl], the [replyUrl] for the response,
/// and the request [params]. A [nonce] is automatically generated.
@freezed
abstract class DeeplinkRpcRequest with _$DeeplinkRpcRequest {
  /// Creates a [DeeplinkRpcRequest].
  ///
  /// Requires the target [requestUrl] and the [replyUrl] where the response should be sent.
  /// Optional [params] can be provided for the request.
  /// A `nonce` is automatically generated using UUID v4.
  factory DeeplinkRpcRequest({
    required final String requestUrl,
    required final String replyUrl,
    final Map<String, dynamic> params = const {},
  }) => DeeplinkRpcRequest._internal(
    nonce: const Uuid().v4(),
    requestUrl: requestUrl,
    replyUrl: replyUrl,
    params: params,
  );

  const factory DeeplinkRpcRequest._internal({
    required final String nonce,
    required final String requestUrl,
    required final String replyUrl,
    required final Map<String, dynamic> params,
  }) = _DeeplinkRpcRequest;

  /// Creates a [DeeplinkRpcRequest] instance from a JSON map.
  factory DeeplinkRpcRequest.fromJson(final Map<String, dynamic> json) =>
      _$DeeplinkRpcRequestFromJson(json);

  const DeeplinkRpcRequest._();
}
