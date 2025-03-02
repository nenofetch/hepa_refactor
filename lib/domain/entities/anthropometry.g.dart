// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anthropometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Anthropometry _$AnthropometryFromJson(Map<String, dynamic> json) =>
    _Anthropometry(
      imt: (json['imt'] as num).toDouble(),
      result: json['result'] as String,
    );

Map<String, dynamic> _$AnthropometryToJson(_Anthropometry instance) =>
    <String, dynamic>{
      'imt': instance.imt,
      'result': instance.result,
    };
