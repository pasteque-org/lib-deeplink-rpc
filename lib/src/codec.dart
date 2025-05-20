import 'dart:convert';

import 'package:archive/archive_io.dart';

/// Encodes and decodes data for Deeplink RPC communication.
class DeeplinkRpcCodec {
  /// Creates a [DeeplinkRpcCodec].
  const DeeplinkRpcCodec();

  /// Encodes the given [data] into a base64Url-encoded string.
  /// The [data] is first converted to JSON, then UTF-8 encoded, then GZip compressed, and finally base64Url encoded.
  String encode<T>(final T data) {
    final jsonPayload = json.encode(data);
    final stringPayload = utf8.encode(jsonPayload);
    final compressedPayload = const GZipEncoder().encode(stringPayload);
    return base64Url.encode(compressedPayload);
  }

  /// Decodes the given base64Url-encoded [data] string into a `Map<String, dynamic>`.
  /// The [data] is first base64Url decoded, then GZip decompressed, then UTF-8 decoded, and finally JSON decoded.
  Map<String, dynamic> decode(final String data) {
    final compressedPayload = base64Url.decode(data);
    final rawPayload = const GZipDecoder().decodeBytes(compressedPayload);
    final stringPayload = utf8.decode(rawPayload);
    return json.decode(stringPayload);
  }
}
