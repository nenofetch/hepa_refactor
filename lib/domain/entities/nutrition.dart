// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hepa/domain/entities/nutrient.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition({
    @JsonKey(name: 'calories') required List<Nutrient> calories,
    @JsonKey(name: 'carbohydrates') required List<Nutrient> carbohydrates,
    @JsonKey(name: 'protein') required List<Nutrient> protein,
    @JsonKey(name: 'fat') required List<Nutrient> fat,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}
