// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hepa/domain/entities/drink.dart';

part 'detail_report.freezed.dart';
part 'detail_report.g.dart';

@freezed
class DetailReport with _$DetailReport {
  const factory DetailReport({
    @JsonKey(name: "breakfast") required List<dynamic> breakfast,
    @JsonKey(name: "lunch") required List<Drink> lunch,
    @JsonKey(name: "dinner") required List<dynamic> dinner,
    @JsonKey(name: "snack") required List<Drink> snack,
    @JsonKey(name: "drink") required List<Drink> drink,
  }) = _DetailReport;
  factory DetailReport.fromJson(Map<String, dynamic> json) =>
      _$DetailReportFromJson(json);
}
