// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    @JsonKey(name: "calories") required List<Calory> calories,
    @JsonKey(name: "carbohydrates") required List<Calory> carbohydrates,
    @JsonKey(name: "protein") required List<Calory> protein,
    @JsonKey(name: "fat") required List<Calory> fat,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

@freezed
class Calory with _$Calory {
  const factory Calory({
    @JsonKey(name: "day") required String day,
    @JsonKey(name: "total") required int total,
  }) = _Calory;

  factory Calory.fromJson(Map<String, dynamic> json) => _$CaloryFromJson(json);
}
