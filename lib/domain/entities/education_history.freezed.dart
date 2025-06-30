// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EducationHistory {
  @JsonKey(name: "education_name")
  String get educationName;
  @JsonKey(name: "tgl_input")
  String get tglInput;

  /// Create a copy of EducationHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EducationHistoryCopyWith<EducationHistory> get copyWith =>
      _$EducationHistoryCopyWithImpl<EducationHistory>(
          this as EducationHistory, _$identity);

  /// Serializes this EducationHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EducationHistory &&
            (identical(other.educationName, educationName) ||
                other.educationName == educationName) &&
            (identical(other.tglInput, tglInput) ||
                other.tglInput == tglInput));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, educationName, tglInput);

  @override
  String toString() {
    return 'EducationHistory(educationName: $educationName, tglInput: $tglInput)';
  }
}

/// @nodoc
abstract mixin class $EducationHistoryCopyWith<$Res> {
  factory $EducationHistoryCopyWith(
          EducationHistory value, $Res Function(EducationHistory) _then) =
      _$EducationHistoryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "education_name") String educationName,
      @JsonKey(name: "tgl_input") String tglInput});
}

/// @nodoc
class _$EducationHistoryCopyWithImpl<$Res>
    implements $EducationHistoryCopyWith<$Res> {
  _$EducationHistoryCopyWithImpl(this._self, this._then);

  final EducationHistory _self;
  final $Res Function(EducationHistory) _then;

  /// Create a copy of EducationHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educationName = null,
    Object? tglInput = null,
  }) {
    return _then(_self.copyWith(
      educationName: null == educationName
          ? _self.educationName
          : educationName // ignore: cast_nullable_to_non_nullable
              as String,
      tglInput: null == tglInput
          ? _self.tglInput
          : tglInput // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EducationHistory implements EducationHistory {
  const _EducationHistory(
      {@JsonKey(name: "education_name") required this.educationName,
      @JsonKey(name: "tgl_input") required this.tglInput});
  factory _EducationHistory.fromJson(Map<String, dynamic> json) =>
      _$EducationHistoryFromJson(json);

  @override
  @JsonKey(name: "education_name")
  final String educationName;
  @override
  @JsonKey(name: "tgl_input")
  final String tglInput;

  /// Create a copy of EducationHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EducationHistoryCopyWith<_EducationHistory> get copyWith =>
      __$EducationHistoryCopyWithImpl<_EducationHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EducationHistoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EducationHistory &&
            (identical(other.educationName, educationName) ||
                other.educationName == educationName) &&
            (identical(other.tglInput, tglInput) ||
                other.tglInput == tglInput));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, educationName, tglInput);

  @override
  String toString() {
    return 'EducationHistory(educationName: $educationName, tglInput: $tglInput)';
  }
}

/// @nodoc
abstract mixin class _$EducationHistoryCopyWith<$Res>
    implements $EducationHistoryCopyWith<$Res> {
  factory _$EducationHistoryCopyWith(
          _EducationHistory value, $Res Function(_EducationHistory) _then) =
      __$EducationHistoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "education_name") String educationName,
      @JsonKey(name: "tgl_input") String tglInput});
}

/// @nodoc
class __$EducationHistoryCopyWithImpl<$Res>
    implements _$EducationHistoryCopyWith<$Res> {
  __$EducationHistoryCopyWithImpl(this._self, this._then);

  final _EducationHistory _self;
  final $Res Function(_EducationHistory) _then;

  /// Create a copy of EducationHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? educationName = null,
    Object? tglInput = null,
  }) {
    return _then(_EducationHistory(
      educationName: null == educationName
          ? _self.educationName
          : educationName // ignore: cast_nullable_to_non_nullable
              as String,
      tglInput: null == tglInput
          ? _self.tglInput
          : tglInput // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
