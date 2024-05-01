import 'package:freezed_annotation/freezed_annotation.dart';

part 'education.freezed.dart';
part 'education.g.dart';

@freezed
class Education with _$Education {
  const factory Education({
    required int id,
    String? thumbnail,
    required String title,
    required String description,
    required String link,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}
