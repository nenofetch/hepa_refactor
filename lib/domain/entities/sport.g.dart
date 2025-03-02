// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sport _$SportFromJson(Map<String, dynamic> json) => _Sport(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fiveMinutesCalories: json['five_minute_calories'] as String,
      fifteenMinuteCalories: json['fifteen_minute_calories'] as String,
      thirtyMinutesCalories: json['thirty_minute_calories'] as String,
      oneHourCalories: json['one_hour_calories'] as String,
    );

Map<String, dynamic> _$SportToJson(_Sport instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'five_minute_calories': instance.fiveMinutesCalories,
      'fifteen_minute_calories': instance.fifteenMinuteCalories,
      'thirty_minute_calories': instance.thirtyMinutesCalories,
      'one_hour_calories': instance.oneHourCalories,
    };
