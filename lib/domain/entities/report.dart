// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    @JsonKey(name: "calories") required List<Category> calories,
    @JsonKey(name: "carbohydrates") required List<Category> carbohydrates,
    @JsonKey(name: "protein") required List<Category> protein,
    @JsonKey(name: "fat") required List<Category> fat,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "day") required String day,
    @JsonKey(name: "total") required int total,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
