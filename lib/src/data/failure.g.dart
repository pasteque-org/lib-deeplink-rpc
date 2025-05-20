// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeeplinkRpcFailure _$DeeplinkRpcFailureFromJson(Map<String, dynamic> json) =>
    _DeeplinkRpcFailure(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$DeeplinkRpcFailureToJson(_DeeplinkRpcFailure instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
