// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeeplinkRpcResult {
  DeeplinkRpcRequest? get request;

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeeplinkRpcResultCopyWith<DeeplinkRpcResult> get copyWith =>
      _$DeeplinkRpcResultCopyWithImpl<DeeplinkRpcResult>(
          this as DeeplinkRpcResult, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeeplinkRpcResult &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @override
  String toString() {
    return 'DeeplinkRpcResult(request: $request)';
  }
}

/// @nodoc
abstract mixin class $DeeplinkRpcResultCopyWith<$Res> {
  factory $DeeplinkRpcResultCopyWith(
          DeeplinkRpcResult value, $Res Function(DeeplinkRpcResult) _then) =
      _$DeeplinkRpcResultCopyWithImpl;
  @useResult
  $Res call({DeeplinkRpcRequest request});

  $DeeplinkRpcRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$DeeplinkRpcResultCopyWithImpl<$Res>
    implements $DeeplinkRpcResultCopyWith<$Res> {
  _$DeeplinkRpcResultCopyWithImpl(this._self, this._then);

  final DeeplinkRpcResult _self;
  final $Res Function(DeeplinkRpcResult) _then;

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_self.copyWith(
      request: null == request
          ? _self.request!
          : request // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcRequest,
    ));
  }

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $DeeplinkRpcRequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc

class _DeeplinkRpcResultFailure extends DeeplinkRpcResult {
  const _DeeplinkRpcResultFailure({required this.failure, this.request})
      : super._();

  final DeeplinkRpcFailure failure;
  @override
  final DeeplinkRpcRequest? request;

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeeplinkRpcResultFailureCopyWith<_DeeplinkRpcResultFailure> get copyWith =>
      __$DeeplinkRpcResultFailureCopyWithImpl<_DeeplinkRpcResultFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeeplinkRpcResultFailure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, request);

  @override
  String toString() {
    return 'DeeplinkRpcResult.failure(failure: $failure, request: $request)';
  }
}

/// @nodoc
abstract mixin class _$DeeplinkRpcResultFailureCopyWith<$Res>
    implements $DeeplinkRpcResultCopyWith<$Res> {
  factory _$DeeplinkRpcResultFailureCopyWith(_DeeplinkRpcResultFailure value,
          $Res Function(_DeeplinkRpcResultFailure) _then) =
      __$DeeplinkRpcResultFailureCopyWithImpl;
  @override
  @useResult
  $Res call({DeeplinkRpcFailure failure, DeeplinkRpcRequest? request});

  $DeeplinkRpcFailureCopyWith<$Res> get failure;
  @override
  $DeeplinkRpcRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$DeeplinkRpcResultFailureCopyWithImpl<$Res>
    implements _$DeeplinkRpcResultFailureCopyWith<$Res> {
  __$DeeplinkRpcResultFailureCopyWithImpl(this._self, this._then);

  final _DeeplinkRpcResultFailure _self;
  final $Res Function(_DeeplinkRpcResultFailure) _then;

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
    Object? request = freezed,
  }) {
    return _then(_DeeplinkRpcResultFailure(
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcFailure,
      request: freezed == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcRequest?,
    ));
  }

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcFailureCopyWith<$Res> get failure {
    return $DeeplinkRpcFailureCopyWith<$Res>(_self.failure, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $DeeplinkRpcRequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc

class _DeeplinkRpcResultSuccess extends DeeplinkRpcResult {
  const _DeeplinkRpcResultSuccess({required this.request, this.result})
      : super._();

  @override
  final DeeplinkRpcRequest request;
  final dynamic result;

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeeplinkRpcResultSuccessCopyWith<_DeeplinkRpcResultSuccess> get copyWith =>
      __$DeeplinkRpcResultSuccessCopyWithImpl<_DeeplinkRpcResultSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeeplinkRpcResultSuccess &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, request, const DeepCollectionEquality().hash(result));

  @override
  String toString() {
    return 'DeeplinkRpcResult.success(request: $request, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$DeeplinkRpcResultSuccessCopyWith<$Res>
    implements $DeeplinkRpcResultCopyWith<$Res> {
  factory _$DeeplinkRpcResultSuccessCopyWith(_DeeplinkRpcResultSuccess value,
          $Res Function(_DeeplinkRpcResultSuccess) _then) =
      __$DeeplinkRpcResultSuccessCopyWithImpl;
  @override
  @useResult
  $Res call({DeeplinkRpcRequest request, dynamic result});

  @override
  $DeeplinkRpcRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$DeeplinkRpcResultSuccessCopyWithImpl<$Res>
    implements _$DeeplinkRpcResultSuccessCopyWith<$Res> {
  __$DeeplinkRpcResultSuccessCopyWithImpl(this._self, this._then);

  final _DeeplinkRpcResultSuccess _self;
  final $Res Function(_DeeplinkRpcResultSuccess) _then;

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
    Object? result = freezed,
  }) {
    return _then(_DeeplinkRpcResultSuccess(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as DeeplinkRpcRequest,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of DeeplinkRpcResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRequestCopyWith<$Res> get request {
    return $DeeplinkRpcRequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

// dart format on
