import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink.freezed.dart';

part 'drink.g.dart';

@freezed
class Drink with _$Drink {
  const factory Drink({
     int? id,
    String? name,
    String? category,
    String? calories,
    String? proteins,
    String? carbohydrate,
    String? fat,
    String? sugar,
    List<int>? drinks,
  }) = _Drink;

  factory Drink.fromJson(Map<String, dynamic> json) => _$DrinkFromJson(json);
}
