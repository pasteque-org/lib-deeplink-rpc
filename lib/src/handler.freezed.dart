// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeeplinkRpcRoute {
  String get pathFirstSegment;

  /// Create a copy of DeeplinkRpcRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRouteCopyWith<DeeplinkRpcRoute> get copyWith =>
      _$DeeplinkRpcRouteCopyWithImpl<DeeplinkRpcRoute>(
          this as DeeplinkRpcRoute, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeeplinkRpcRoute &&
            (identical(other.pathFirstSegment, pathFirstSegment) ||
                other.pathFirstSegment == pathFirstSegment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pathFirstSegment);

  @override
  String toString() {
    return 'DeeplinkRpcRoute(pathFirstSegment: $pathFirstSegment)';
  }
}

/// @nodoc
abstract mixin class $DeeplinkRpcRouteCopyWith<$Res> {
  factory $DeeplinkRpcRouteCopyWith(
          DeeplinkRpcRoute value, $Res Function(DeeplinkRpcRoute) _then) =
      _$DeeplinkRpcRouteCopyWithImpl;
  @useResult
  $Res call({String pathFirstSegment});
}

/// @nodoc
class _$DeeplinkRpcRouteCopyWithImpl<$Res>
    implements $DeeplinkRpcRouteCopyWith<$Res> {
  _$DeeplinkRpcRouteCopyWithImpl(this._self, this._then);

  final DeeplinkRpcRoute _self;
  final $Res Function(DeeplinkRpcRoute) _then;

  /// Create a copy of DeeplinkRpcRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pathFirstSegment = null,
  }) {
    return _then(_self.copyWith(
      pathFirstSegment: null == pathFirstSegment
          ? _self.pathFirstSegment
          : pathFirstSegment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _DeeplinkRpcRoute extends DeeplinkRpcRoute {
  const _DeeplinkRpcRoute(this.pathFirstSegment) : super._();

  @override
  final String pathFirstSegment;

  /// Create a copy of DeeplinkRpcRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeeplinkRpcRouteCopyWith<_DeeplinkRpcRoute> get copyWith =>
      __$DeeplinkRpcRouteCopyWithImpl<_DeeplinkRpcRoute>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeeplinkRpcRoute &&
            (identical(other.pathFirstSegment, pathFirstSegment) ||
                other.pathFirstSegment == pathFirstSegment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pathFirstSegment);

  @override
  String toString() {
    return 'DeeplinkRpcRoute(pathFirstSegment: $pathFirstSegment)';
  }
}

/// @nodoc
abstract mixin class _$DeeplinkRpcRouteCopyWith<$Res>
    implements $DeeplinkRpcRouteCopyWith<$Res> {
  factory _$DeeplinkRpcRouteCopyWith(
          _DeeplinkRpcRoute value, $Res Function(_DeeplinkRpcRoute) _then) =
      __$DeeplinkRpcRouteCopyWithImpl;
  @override
  @useResult
  $Res call({String pathFirstSegment});
}

/// @nodoc
class __$DeeplinkRpcRouteCopyWithImpl<$Res>
    implements _$DeeplinkRpcRouteCopyWith<$Res> {
  __$DeeplinkRpcRouteCopyWithImpl(this._self, this._then);

  final _DeeplinkRpcRoute _self;
  final $Res Function(_DeeplinkRpcRoute) _then;

  /// Create a copy of DeeplinkRpcRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pathFirstSegment = null,
  }) {
    return _then(_DeeplinkRpcRoute(
      null == pathFirstSegment
          ? _self.pathFirstSegment
          : pathFirstSegment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DeeplinkRpcRequestHandler {
  DeeplinkRpcRoute get route;
  FutureOr<Map<String, dynamic>> Function(DeeplinkRpcRequest request)
      get handle;

  /// Create a copy of DeeplinkRpcRequestHandler
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRequestHandlerCopyWith<DeeplinkRpcRequestHandler> get copyWith =>
      _$DeeplinkRpcRequestHandlerCopyWithImpl<DeeplinkRpcRequestHandler>(
          this as DeeplinkRpcRequestHandler, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeeplinkRpcRequestHandler &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.handle, handle) || other.handle == handle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, handle);

  @override
  String toString() {
    return 'DeeplinkRpcRequestHandler(route: $route, handle: $handle)';
  }
}

/// @nodoc
abstract mixin class $DeeplinkRpcRequestHandlerCopyWith<$Res> {
  factory $DeeplinkRpcRequestHandlerCopyWith(DeeplinkRpcRequestHandler value,
          $Res Function(DeeplinkRpcRequestHandler) _then) =
      _$DeeplinkRpcRequestHandlerCopyWithImpl;
  @useResult
  $Res call(
      {DeeplinkRpcRoute route,
      FutureOr<Map<String, dynamic>> Function(DeeplinkRpcRequest request)
          handle});

  $DeeplinkRpcRouteCopyWith<$Res> get route;
}

/// @nodoc
class _$DeeplinkRpcRequestHandlerCopyWithImpl<$Res>
    implements $DeeplinkRpcRequestHandlerCopyWith<$Res> {
  _$DeeplinkRpcRequestHandlerCopyWithImpl(this._self, this._then);

  final DeeplinkRpcRequestHandler _self;
  final $Res Function(DeeplinkRpcRequestHandler) _then;

  /// Create a copy of DeeplinkRpcRequestHandler
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? handle = null,
  }) {
    return _then(_self.copyWith(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcRoute,
      handle: null == handle
          ? _self.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as FutureOr<Map<String, dynamic>> Function(
                  DeeplinkRpcRequest request),
    ));
  }

  /// Create a copy of DeeplinkRpcRequestHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRouteCopyWith<$Res> get route {
    return $DeeplinkRpcRouteCopyWith<$Res>(_self.route, (value) {
      return _then(_self.copyWith(route: value));
    });
  }
}

/// @nodoc

class _DeeplinkRpcRequestHandler extends DeeplinkRpcRequestHandler {
  const _DeeplinkRpcRequestHandler({required this.route, required this.handle})
      : super._();

  @override
  final DeeplinkRpcRoute route;
  @override
  final FutureOr<Map<String, dynamic>> Function(DeeplinkRpcRequest request)
      handle;

  /// Create a copy of DeeplinkRpcRequestHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeeplinkRpcRequestHandlerCopyWith<_DeeplinkRpcRequestHandler>
      get copyWith =>
          __$DeeplinkRpcRequestHandlerCopyWithImpl<_DeeplinkRpcRequestHandler>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeeplinkRpcRequestHandler &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.handle, handle) || other.handle == handle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, handle);

  @override
  String toString() {
    return 'DeeplinkRpcRequestHandler(route: $route, handle: $handle)';
  }
}

/// @nodoc
abstract mixin class _$DeeplinkRpcRequestHandlerCopyWith<$Res>
    implements $DeeplinkRpcRequestHandlerCopyWith<$Res> {
  factory _$DeeplinkRpcRequestHandlerCopyWith(_DeeplinkRpcRequestHandler value,
          $Res Function(_DeeplinkRpcRequestHandler) _then) =
      __$DeeplinkRpcRequestHandlerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DeeplinkRpcRoute route,
      FutureOr<Map<String, dynamic>> Function(DeeplinkRpcRequest request)
          handle});

  @override
  $DeeplinkRpcRouteCopyWith<$Res> get route;
}

/// @nodoc
class __$DeeplinkRpcRequestHandlerCopyWithImpl<$Res>
    implements _$DeeplinkRpcRequestHandlerCopyWith<$Res> {
  __$DeeplinkRpcRequestHandlerCopyWithImpl(this._self, this._then);

  final _DeeplinkRpcRequestHandler _self;
  final $Res Function(_DeeplinkRpcRequestHandler) _then;

  /// Create a copy of DeeplinkRpcRequestHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
    Object? handle = null,
  }) {
    return _then(_DeeplinkRpcRequestHandler(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcRoute,
      handle: null == handle
          ? _self.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as FutureOr<Map<String, dynamic>> Function(
                  DeeplinkRpcRequest request),
    ));
  }

  /// Create a copy of DeeplinkRpcRequestHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRouteCopyWith<$Res> get route {
    return $DeeplinkRpcRouteCopyWith<$Res>(_self.route, (value) {
      return _then(_self.copyWith(route: value));
    });
  }
}

/// @nodoc
mixin _$DeeplinkRpcResponseHandler {
  DeeplinkRpcRoute get route;
  FutureOr<void> Function(DeeplinkRpcResponse response) get handle;

  /// Create a copy of DeeplinkRpcResponseHandler
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeeplinkRpcResponseHandlerCopyWith<DeeplinkRpcResponseHandler>
      get copyWith =>
          _$DeeplinkRpcResponseHandlerCopyWithImpl<DeeplinkRpcResponseHandler>(
              this as DeeplinkRpcResponseHandler, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeeplinkRpcResponseHandler &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.handle, handle) || other.handle == handle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, handle);

  @override
  String toString() {
    return 'DeeplinkRpcResponseHandler(route: $route, handle: $handle)';
  }
}

/// @nodoc
abstract mixin class $DeeplinkRpcResponseHandlerCopyWith<$Res> {
  factory $DeeplinkRpcResponseHandlerCopyWith(DeeplinkRpcResponseHandler value,
          $Res Function(DeeplinkRpcResponseHandler) _then) =
      _$DeeplinkRpcResponseHandlerCopyWithImpl;
  @useResult
  $Res call(
      {DeeplinkRpcRoute route,
      FutureOr<void> Function(DeeplinkRpcResponse response) handle});

  $DeeplinkRpcRouteCopyWith<$Res> get route;
}

/// @nodoc
class _$DeeplinkRpcResponseHandlerCopyWithImpl<$Res>
    implements $DeeplinkRpcResponseHandlerCopyWith<$Res> {
  _$DeeplinkRpcResponseHandlerCopyWithImpl(this._self, this._then);

  final DeeplinkRpcResponseHandler _self;
  final $Res Function(DeeplinkRpcResponseHandler) _then;

  /// Create a copy of DeeplinkRpcResponseHandler
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? handle = null,
  }) {
    return _then(_self.copyWith(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcRoute,
      handle: null == handle
          ? _self.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as FutureOr<void> Function(DeeplinkRpcResponse response),
    ));
  }

  /// Create a copy of DeeplinkRpcResponseHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRouteCopyWith<$Res> get route {
    return $DeeplinkRpcRouteCopyWith<$Res>(_self.route, (value) {
      return _then(_self.copyWith(route: value));
    });
  }
}

/// @nodoc

class _DeeplinkRpcResponseHandler extends DeeplinkRpcResponseHandler {
  const _DeeplinkRpcResponseHandler({required this.route, required this.handle})
      : super._();

  @override
  final DeeplinkRpcRoute route;
  @override
  final FutureOr<void> Function(DeeplinkRpcResponse response) handle;

  /// Create a copy of DeeplinkRpcResponseHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeeplinkRpcResponseHandlerCopyWith<_DeeplinkRpcResponseHandler>
      get copyWith => __$DeeplinkRpcResponseHandlerCopyWithImpl<
          _DeeplinkRpcResponseHandler>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeeplinkRpcResponseHandler &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.handle, handle) || other.handle == handle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, handle);

  @override
  String toString() {
    return 'DeeplinkRpcResponseHandler(route: $route, handle: $handle)';
  }
}

/// @nodoc
abstract mixin class _$DeeplinkRpcResponseHandlerCopyWith<$Res>
    implements $DeeplinkRpcResponseHandlerCopyWith<$Res> {
  factory _$DeeplinkRpcResponseHandlerCopyWith(
          _DeeplinkRpcResponseHandler value,
          $Res Function(_DeeplinkRpcResponseHandler) _then) =
      __$DeeplinkRpcResponseHandlerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DeeplinkRpcRoute route,
      FutureOr<void> Function(DeeplinkRpcResponse response) handle});

  @override
  $DeeplinkRpcRouteCopyWith<$Res> get route;
}

/// @nodoc
class __$DeeplinkRpcResponseHandlerCopyWithImpl<$Res>
    implements _$DeeplinkRpcResponseHandlerCopyWith<$Res> {
  __$DeeplinkRpcResponseHandlerCopyWithImpl(this._self, this._then);

  final _DeeplinkRpcResponseHandler _self;
  final $Res Function(_DeeplinkRpcResponseHandler) _then;

  /// Create a copy of DeeplinkRpcResponseHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
    Object? handle = null,
  }) {
    return _then(_DeeplinkRpcResponseHandler(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcRoute,
      handle: null == handle
          ? _self.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as FutureOr<void> Function(DeeplinkRpcResponse response),
    ));
  }

  /// Create a copy of DeeplinkRpcResponseHandler
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRouteCopyWith<$Res> get route {
    return $DeeplinkRpcRouteCopyWith<$Res>(_self.route, (value) {
      return _then(_self.copyWith(route: value));
    });
  }
}

// dart format on
