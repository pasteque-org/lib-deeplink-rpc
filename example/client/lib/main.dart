import 'dart:convert';
import 'dart:developer' as dev;

import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

/// A singleton class to provide a single instance of [DeeplinkRpcClient].
class DeeplinkRpcClientSingleton {
  DeeplinkRpcClientSingleton._();

  static DeeplinkRpcClient? _client;

  /// Returns the singleton instance of [DeeplinkRpcClient].
  /// If an instance doesn't exist, it creates one.
  static DeeplinkRpcClient get client {
    return _client ??= DeeplinkRpcClient();
  }
}

/// Initializes the application, sets up logging, and runs the [MyApp] widget.
void main() {
  Logger.root.onRecord.listen((final event) {
    dev.log(
      event.message,
      name: event.loggerName,
      error: event.error,
      stackTrace: event.stackTrace,
      level: event.level.value,
      time: event.time,
      sequenceNumber: event.sequenceNumber,
      zone: event.zone,
    );
  });

  runApp(MyApp());
}

/// The main application widget for the Deeplink RPC client example.
///
/// This widget sets up a [MaterialApp.router] with [GoRouter]
/// to handle navigation, display a button to send an RPC request,
/// and process incoming deeplink RPC responses.
class MyApp extends StatelessWidget {
  /// Creates an instance of [MyApp].
  MyApp({super.key});

  final _logger = Logger('Example app');

  @override

  /// Builds the widget tree for the [MyApp].
  ///
  /// Returns a [MaterialApp.router] configured with [GoRouter]
  /// for routing, displaying the main UI with a send request button,
  /// and handling deeplink responses.
  Widget build(final BuildContext context) {
    return MaterialApp.router(
      title: 'DeeplinkRPCClient Demo',
      routerConfig: GoRouter(
        initialLocation: '/',
        debugLogDiagnostics: true,
        routes: [
          GoRoute(
            path: '/',
            builder: (final context, final state) {
              return Scaffold(
                body: Scaffold(
                  floatingActionButton: _SendRequestButton(logger: _logger),
                  body: const SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text('DeeplinkRPCClient example'),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
        redirect: (final context, final state) {
          DeeplinkRpcClientSingleton.client
              .handleResponse(state.uri.toString());
          return null;
        },
      ),
    );
  }
}

class _SendRequestButton extends StatelessWidget {
  const _SendRequestButton({
    required final Logger logger,
  }) : _logger = logger;

  final Logger _logger;

  @override
  Widget build(final BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.send),
      onPressed: () async {
        final response = await DeeplinkRpcClientSingleton.client.send(
          request: DeeplinkRpcRequest(
            requestUrl:
                'deeplinkrpcserverexample://rpc.deeplink.server/request_endpoint/',
            replyUrl: 'deeplinkrpcclientexample://rpc.deeplink.client/',
            params: {
              'param1': 'value1',
              'param2': 'value2',
            },
          ),
        );

        response.map(
          failure: (final failure) {
            _logger.severe(
              'RPC request failed',
              failure,
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.message ?? 'An error occurred'),
              ),
            );
          },
          success: (final result) {
            _logger.info(
              'RPC request succeed : ${json.encode(result)}',
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(json.encode(result))),
            );
          },
        );
      },
    );
  }
}
