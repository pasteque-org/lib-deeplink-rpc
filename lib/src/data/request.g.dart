// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeeplinkRpcRequest _$DeeplinkRpcRequestFromJson(Map<String, dynamic> json) =>
    _DeeplinkRpcRequest(
      nonce: json['nonce'] as String,
      requestUrl: json['requestUrl'] as String,
      replyUrl: json['replyUrl'] as String,
      params: json['params'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DeeplinkRpcRequestToJson(_DeeplinkRpcRequest instance) =>
    <String, dynamic>{
      'nonce': instance.nonce,
      'requestUrl': instance.requestUrl,
      'replyUrl': instance.replyUrl,
      'params': instance.params,
    };
