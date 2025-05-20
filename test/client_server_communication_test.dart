import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:deeplink_rpc/src/codec.dart';
import 'package:deeplink_rpc/src/url_launcher.dart';
import 'package:test/test.dart';

class BrokenRPCCodec implements DeeplinkRpcCodec {
  @override
  Map<String, dynamic> decode(final String data) => {};

  @override
  String encode<T>(final T data) => 'invalid_data';
}

class MockUrlLauncher implements UrlLauncher {
  MockUrlLauncher({required final Future<bool> Function(Uri url) launchUrl})
    : _launchUrl = launchUrl;

  final Future<bool> Function(Uri url) _launchUrl;

  @override
  Future<bool> canLaunchUrl(final Uri url) async => true;

  @override
  Future<bool> launchUrl(final Uri url) => _launchUrl(url);
}

void main() {
  late MockUrlLauncher clientUrlLauncherMock;
  late DeeplinkRpcClient client;
  late MockUrlLauncher serverUrlLauncherMock;
  late DeeplinkRpcServer server;

  void setupClientAndServer({final DeeplinkRpcCodec? clientCodec}) {
    clientUrlLauncherMock = MockUrlLauncher(
      launchUrl: (final uri) async {
        await server.handle(uri.path);
        return true;
      },
    );
    client = DeeplinkRpcClient(
      urlLauncher: clientUrlLauncherMock,
      codec: clientCodec,
    );
    serverUrlLauncherMock = MockUrlLauncher(
      launchUrl: (final uri) async {
        return client.handleResponse(uri.path);
      },
    );
    server = DeeplinkRpcServer(urlLauncher: serverUrlLauncherMock);
  }

  test('Client should receive a success response when call is valid', () async {
    setupClientAndServer();
    server.registerHandler(
      DeeplinkRpcRequestHandler(
        route: const DeeplinkRpcRoute('request_endpoint'),
        handle:
            (final request) => {'responseString': 'aString', 'responseInt': 4},
      ),
    );

    final response = await client.send(
      request: DeeplinkRpcRequest(
        requestUrl: 'serverapp://server.app/request_endpoint',
        replyUrl: 'clientapp://client.app/reply_endpoint',
        params: {'clientProp1': 'value1', 'clientProp2': 2},
      ),
    );
    expect(response.result, {'responseString': 'aString', 'responseInt': 4});
  });

  test(
    'Client should receive a timeout failure when call is longer than expected',
    () async {
      setupClientAndServer();

      server.registerHandler(
        DeeplinkRpcRequestHandler(
          route: const DeeplinkRpcRoute('request_endpoint'),
          handle: (final request) async {
            await Future.delayed(const Duration(milliseconds: 1));
            return {};
          },
        ),
      );

      final response = await client.send(
        timeout: const Duration(microseconds: 1),
        request: DeeplinkRpcRequest(
          requestUrl: 'serverapp://server.app/request_endpoint',
          replyUrl: 'clientapp://client.app/reply_endpoint',
          params: {},
        ),
      );
      expect(
        response.failure,
        const DeeplinkRpcFailure(
          code: DeeplinkRpcFailure.kTimeout,
          message: 'Request timeout.',
        ),
      );
    },
  );

  test(
    "Client should not receive response when call format is invalid (because the server doesn't know at which URL to send the response)",
    () async {
      setupClientAndServer(clientCodec: BrokenRPCCodec());

      server.registerHandler(
        DeeplinkRpcRequestHandler(
          route: const DeeplinkRpcRoute('request_endpoint'),
          handle: (final request) => {},
        ),
      );

      final response = await client.send(
        timeout: const Duration(milliseconds: 1),
        request: DeeplinkRpcRequest(
          requestUrl: 'serverapp://server.app/request_endpoint',
          replyUrl: 'clientapp://client.app/reply_endpoint',
          params: {},
        ),
      );
      expect(
        response.failure,
        const DeeplinkRpcFailure(
          code: DeeplinkRpcFailure.kTimeout,
          message: 'Request timeout.',
        ),
      );
    },
  );

  test(
    'Client should receive a failure when server endpoint does not exist',
    () async {
      setupClientAndServer();

      final response = await client.send(
        request: DeeplinkRpcRequest(
          requestUrl: 'serverapp://server.app/unknown_endpoint',
          replyUrl: 'clientapp://client.app/reply_endpoint',
          params: {},
        ),
      );
      expect(response.failure, isNotNull);
      expect(response.failure?.code, DeeplinkRpcFailure.kInvalidRequest);
    },
  );
}
