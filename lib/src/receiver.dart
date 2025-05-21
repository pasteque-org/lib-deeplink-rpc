import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:logging/logging.dart';

/// Base class for receiving and routing deeplink messages to appropriate handlers.
///
/// Type [T] is the type of [DeeplinkRpcHandler] this receiver will manage.
abstract class BaseDeeplinkRpcReceiver<T extends DeeplinkRpcHandler> {
  final Set<T> _routeHandlers = {};

  static final _logger = Logger('DeeplinkRPCReceiver');

  /// Finds a registered handler that matches the given [path].
  ///
  /// Returns the matching handler of type [T], or `null` if no handler is found or if the [path] is `null`.
  T? handlerForPath(final String? path) {
    if (path == null) {
      return null;
    }
    return _routeHandlers.cast<T?>().firstWhere(
      (final handler) => handler?.route.matches(path) ?? false,
      orElse: () => null,
    );
  }

  /// Registers a [handler] to process deeplinks for its specified route.
  ///
  /// If a handler for the same route is already registered, a message is logged and the new handler is not added.
  void registerHandler(final T handler) {
    if (_routeHandlers.contains(handler)) {
      _logger.info(
        'A route handler is already registered for ${handler.route.pathFirstSegment}',
      );
      return;
    }
    _routeHandlers.add(handler);
  }

  /// Checks if there is a registered handler for the given [path].
  ///
  /// Returns `true` if a handler exists for the [path], `false` otherwise or if the [path] is `null`.
  bool canHandle(final String? path) {
    if (path == null) {
      return false;
    }
    return handlerForPath(path) != null;
  }
}
