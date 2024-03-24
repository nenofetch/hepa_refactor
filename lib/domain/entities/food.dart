import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  const factory Food({
    required int id,
    String? name,
    String? category,
    String? portion,
    String? calories,
    String? proteins,
    String? carbohydrate,
    String? fat,
    String? fiber,
    String? sugar,
    List<int>? foods,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
