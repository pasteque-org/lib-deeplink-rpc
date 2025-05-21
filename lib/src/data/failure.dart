import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';
part 'failure.g.dart';

/// Represents a failure in a Deeplink RPC communication.
///
/// This class is used to encapsulate error details such as a code, message, and optional data.
/// It implements [Exception] and can be thrown.
@freezed
abstract class DeeplinkRpcFailure
    with _$DeeplinkRpcFailure
    implements Exception {
  /// Creates a [DeeplinkRpcFailure].
  ///
  /// Requires an error [code].
  /// An optional [message] can provide a human-readable description of the error.
  /// Optional [data] can provide additional error-specific information.
  const factory DeeplinkRpcFailure({
    required final int code,
    final String? message,
    final data,
  }) = _DeeplinkRpcFailure;

  const DeeplinkRpcFailure._();

  /// Creates a [DeeplinkRpcFailure] instance from a JSON map.
  factory DeeplinkRpcFailure.fromJson(final Map<String, dynamic> json) =>
      _$DeeplinkRpcFailureFromJson(json);

  /// Error code for an invalid request format or parameters.
  static const int kInvalidRequest = -32600;

  /// Generic server error code.
  static const int kServerError = -32000;

  /// Error code for connectivity issues.
  static const kConnectivityIssue = 4901;

  /// Error code for a request timeout.
  static const int kTimeout = -33000;
}
