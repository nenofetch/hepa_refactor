import 'package:freezed_annotation/freezed_annotation.dart';

part 'anthropometry.freezed.dart';
part 'anthropometry.g.dart';

@freezed
class Anthropometry with _$Anthropometry {
  const factory Anthropometry({
    required double imt,
    required String result,
  }) = _Anthropometry;

  factory Anthropometry.fromJson(Map<String, dynamic> json) =>
      _$AnthropometryFromJson(json);
}
