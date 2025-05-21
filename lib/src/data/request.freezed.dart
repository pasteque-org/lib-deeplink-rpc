// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeeplinkRpcRequest {
  String get nonce;
  String get requestUrl;
  String get replyUrl;
  Map<String, dynamic> get params;

  /// Create a copy of DeeplinkRpcRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeeplinkRpcRequestCopyWith<DeeplinkRpcRequest> get copyWith =>
      _$DeeplinkRpcRequestCopyWithImpl<DeeplinkRpcRequest>(
          this as DeeplinkRpcRequest, _$identity);

  /// Serializes this DeeplinkRpcRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeeplinkRpcRequest &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.requestUrl, requestUrl) ||
                other.requestUrl == requestUrl) &&
            (identical(other.replyUrl, replyUrl) ||
                other.replyUrl == replyUrl) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nonce, requestUrl, replyUrl,
      const DeepCollectionEquality().hash(params));

  @override
  String toString() {
    return 'DeeplinkRpcRequest(nonce: $nonce, requestUrl: $requestUrl, replyUrl: $replyUrl, params: $params)';
  }
}

/// @nodoc
abstract mixin class $DeeplinkRpcRequestCopyWith<$Res> {
  factory $DeeplinkRpcRequestCopyWith(
          DeeplinkRpcRequest value, $Res Function(DeeplinkRpcRequest) _then) =
      _$DeeplinkRpcRequestCopyWithImpl;
  @useResult
  $Res call(
      {String nonce,
      String requestUrl,
      String replyUrl,
      Map<String, dynamic> params});
}

/// @nodoc
class _$DeeplinkRpcRequestCopyWithImpl<$Res>
    implements $DeeplinkRpcRequestCopyWith<$Res> {
  _$DeeplinkRpcRequestCopyWithImpl(this._self, this._then);

  final DeeplinkRpcRequest _self;
  final $Res Function(DeeplinkRpcRequest) _then;

  /// Create a copy of DeeplinkRpcRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonce = null,
    Object? requestUrl = null,
    Object? replyUrl = null,
    Object? params = null,
  }) {
    return _then(_self.copyWith(
      nonce: null == nonce
          ? _self.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      requestUrl: null == requestUrl
          ? _self.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String,
      replyUrl: null == replyUrl
          ? _self.replyUrl
          : replyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DeeplinkRpcRequest extends DeeplinkRpcRequest {
  const _DeeplinkRpcRequest(
      {required this.nonce,
      required this.requestUrl,
      required this.replyUrl,
      required final Map<String, dynamic> params})
      : _params = params,
        super._();
  factory _DeeplinkRpcRequest.fromJson(Map<String, dynamic> json) =>
      _$DeeplinkRpcRequestFromJson(json);

  @override
  final String nonce;
  @override
  final String requestUrl;
  @override
  final String replyUrl;
  final Map<String, dynamic> _params;
  @override
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  /// Create a copy of DeeplinkRpcRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeeplinkRpcRequestCopyWith<_DeeplinkRpcRequest> get copyWith =>
      __$DeeplinkRpcRequestCopyWithImpl<_DeeplinkRpcRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeeplinkRpcRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeeplinkRpcRequest &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.requestUrl, requestUrl) ||
                other.requestUrl == requestUrl) &&
            (identical(other.replyUrl, replyUrl) ||
                other.replyUrl == replyUrl) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nonce, requestUrl, replyUrl,
      const DeepCollectionEquality().hash(_params));

  @override
  String toString() {
    return 'DeeplinkRpcRequest._internal(nonce: $nonce, requestUrl: $requestUrl, replyUrl: $replyUrl, params: $params)';
  }
}

/// @nodoc
abstract mixin class _$DeeplinkRpcRequestCopyWith<$Res>
    implements $DeeplinkRpcRequestCopyWith<$Res> {
  factory _$DeeplinkRpcRequestCopyWith(
          _DeeplinkRpcRequest value, $Res Function(_DeeplinkRpcRequest) _then) =
      __$DeeplinkRpcRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String nonce,
      String requestUrl,
      String replyUrl,
      Map<String, dynamic> params});
}

/// @nodoc
class __$DeeplinkRpcRequestCopyWithImpl<$Res>
    implements _$DeeplinkRpcRequestCopyWith<$Res> {
  __$DeeplinkRpcRequestCopyWithImpl(this._self, this._then);

  final _DeeplinkRpcRequest _self;
  final $Res Function(_DeeplinkRpcRequest) _then;

  /// Create a copy of DeeplinkRpcRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nonce = null,
    Object? requestUrl = null,
    Object? replyUrl = null,
    Object? params = null,
  }) {
    return _then(_DeeplinkRpcRequest(
      nonce: null == nonce
          ? _self.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      requestUrl: null == requestUrl
          ? _self.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String,
      replyUrl: null == replyUrl
          ? _self.replyUrl
          : replyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
