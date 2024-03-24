// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportImpl _$$SportImplFromJson(Map<String, dynamic> json) => _$SportImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      fiveMinutesCalories: json['five_minute_calories'] as String,
      fifteenMinuteCalories: json['fifteen_minute_calories'] as String,
      thirtyMinutesCalories: json['thirty_minute_calories'] as String,
      oneHourCalories: json['one_hour_calories'] as String,
    );

Map<String, dynamic> _$$SportImplToJson(_$SportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'five_minute_calories': instance.fiveMinutesCalories,
      'fifteen_minute_calories': instance.fifteenMinuteCalories,
      'thirty_minute_calories': instance.thirtyMinutesCalories,
      'one_hour_calories': instance.oneHourCalories,
    };
