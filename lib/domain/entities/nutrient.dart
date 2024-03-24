// nutrient_data.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient.freezed.dart';
part 'nutrient.g.dart';

@freezed
class Nutrient with _$Nutrient {
  const factory Nutrient({
    required String day,
    required int total,
  }) = _Nutrient;

  factory Nutrient.fromJson(Map<String, dynamic> json) =>
      _$NutrientFromJson(json);
}
