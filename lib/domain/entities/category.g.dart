// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
      day: json['day'] as String,
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
      'day': instance.day,
      'total': instance.total,
    };
