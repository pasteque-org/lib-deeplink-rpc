// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeeplinkRpcResponse _$DeeplinkRpcResponseFromJson(Map<String, dynamic> json) =>
    DeeplinkRpcResponse(
      nonce: json['nonce'] as String,
      failure: json['failure'] == null
          ? null
          : DeeplinkRpcFailure.fromJson(
              json['failure'] as Map<String, dynamic>),
      result: json['result'],
    );

Map<String, dynamic> _$DeeplinkRpcResponseToJson(
        DeeplinkRpcResponse instance) =>
    <String, dynamic>{
      'nonce': instance.nonce,
      if (instance.failure case final value?) 'failure': value,
      if (instance.result case final value?) 'result': value,
    };
