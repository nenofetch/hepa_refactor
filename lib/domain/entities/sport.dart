// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport.freezed.dart';
part 'sport.g.dart';

@freezed
class Sport with _$Sport {
  const factory Sport({
    required int id,
    required String name,
    @JsonKey(name: 'five_minute_calories') required String fiveMinutesCalories,
    @JsonKey(name: 'fifteen_minute_calories')
    required String fifteenMinuteCalories,
    @JsonKey(name: 'thirty_minute_calories')
    required String thirtyMinutesCalories,
    @JsonKey(name: 'one_hour_calories') required String oneHourCalories,
  }) = _Sport;
  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);
}
