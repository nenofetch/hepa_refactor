// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_report_data.freezed.dart';
part 'detail_report_data.g.dart';

@freezed
class DetailReportData with _$DetailReportData {
  const factory DetailReportData({
    @JsonKey(name: "breakfast") required List<Data> breakfast,
    @JsonKey(name: "lunch") required List<Data> lunch,
    @JsonKey(name: "dinner") required List<Data> dinner,
    @JsonKey(name: "snack") required List<Data> snack,
    @JsonKey(name: "drink") required List<Data> drink,
  }) = _DetailReport;

  factory DetailReportData.fromJson(Map<String, dynamic> json) =>
      _$DetailReportDataFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "calories") required String calories,
    @JsonKey(name: "carbohydrates") required String carbohydrates,
    @JsonKey(name: "protein") required String protein,
    @JsonKey(name: "fat") required String fat,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
