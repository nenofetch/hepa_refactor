// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_history.freezed.dart';
part 'education_history.g.dart';

@freezed
abstract class EducationHistory with _$EducationHistory {
  const factory EducationHistory({
    @JsonKey(name: "education_name") String? educationName,
    @JsonKey(name: "tgl_input") String? tglInput,
  }) = _EducationHistory;

  factory EducationHistory.fromJson(Map<String, dynamic> json) =>
      _$EducationHistoryFromJson(json);
}
