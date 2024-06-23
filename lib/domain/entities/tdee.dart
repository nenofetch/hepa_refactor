import 'package:freezed_annotation/freezed_annotation.dart';
part 'tdee.freezed.dart';
part 'tdee.g.dart';


@freezed
class Tdee with _$Tdee {
 const factory Tdee({
  required double weight,
  required double height,
 }) = _Tdee;
  factory Tdee.fromJson(Map<String, dynamic> json)=> _$TdeeFromJson(json);
}

