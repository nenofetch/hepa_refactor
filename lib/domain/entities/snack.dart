import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack.freezed.dart';
part 'snack.g.dart';

@freezed
class Snack with _$Snack {
  const factory Snack({
     int? id,
    String? name,
    String? category,
    String? portion,
    String? calories,
    String? proteins,
    String? carbohydrate,
    String? fat,
    String? sugar,
    List<int>? snacks,
  }) = _Snack;

  factory Snack.fromJson(Map<String, dynamic> json) => _$SnackFromJson(json);
}
