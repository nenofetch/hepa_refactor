import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmr.freezed.dart';
part 'bmr.g.dart';

@freezed
class BMR with _$BMR {
  const factory BMR({required String result}) = _BMR;

  factory BMR.fromJson(Map<String, dynamic> json) => _$BMRFromJson(json);
}
