// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeeplinkRpcFailure {
  int get code;
  String? get message;
  dynamic get data;

  /// Create a copy of DeeplinkRpcFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeeplinkRpcFailureCopyWith<DeeplinkRpcFailure> get copyWith =>
      _$DeeplinkRpcFailureCopyWithImpl<DeeplinkRpcFailure>(
          this as DeeplinkRpcFailure, _$identity);

  /// Serializes this DeeplinkRpcFailure to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeeplinkRpcFailure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DeeplinkRpcFailure(code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $DeeplinkRpcFailureCopyWith<$Res> {
  factory $DeeplinkRpcFailureCopyWith(
          DeeplinkRpcFailure value, $Res Function(DeeplinkRpcFailure) _then) =
      _$DeeplinkRpcFailureCopyWithImpl;
  @useResult
  $Res call({int code, String? message, dynamic data});
}

/// @nodoc
class _$DeeplinkRpcFailureCopyWithImpl<$Res>
    implements $DeeplinkRpcFailureCopyWith<$Res> {
  _$DeeplinkRpcFailureCopyWithImpl(this._self, this._then);

  final DeeplinkRpcFailure _self;
  final $Res Function(DeeplinkRpcFailure) _then;

  /// Create a copy of DeeplinkRpcFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DeeplinkRpcFailure extends DeeplinkRpcFailure {
  const _DeeplinkRpcFailure({required this.code, this.message, this.data})
      : super._();
  factory _DeeplinkRpcFailure.fromJson(Map<String, dynamic> json) =>
      _$DeeplinkRpcFailureFromJson(json);

  @override
  final int code;
  @override
  final String? message;
  @override
  final dynamic data;

  /// Create a copy of DeeplinkRpcFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeeplinkRpcFailureCopyWith<_DeeplinkRpcFailure> get copyWith =>
      __$DeeplinkRpcFailureCopyWithImpl<_DeeplinkRpcFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeeplinkRpcFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeeplinkRpcFailure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DeeplinkRpcFailure(code: $code, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DeeplinkRpcFailureCopyWith<$Res>
    implements $DeeplinkRpcFailureCopyWith<$Res> {
  factory _$DeeplinkRpcFailureCopyWith(
          _DeeplinkRpcFailure value, $Res Function(_DeeplinkRpcFailure) _then) =
      __$DeeplinkRpcFailureCopyWithImpl;
  @override
  @useResult
  $Res call({int code, String? message, dynamic data});
}

/// @nodoc
class __$DeeplinkRpcFailureCopyWithImpl<$Res>
    implements _$DeeplinkRpcFailureCopyWith<$Res> {
  __$DeeplinkRpcFailureCopyWithImpl(this._self, this._then);

  final _DeeplinkRpcFailure _self;
  final $Res Function(_DeeplinkRpcFailure) _then;

  /// Create a copy of DeeplinkRpcFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_DeeplinkRpcFailure(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
