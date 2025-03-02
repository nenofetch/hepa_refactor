// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Report {
  @JsonKey(name: "calories")
  List<Category> get calories;
  @JsonKey(name: "carbohydrates")
  List<Category> get carbohydrates;
  @JsonKey(name: "protein")
  List<Category> get protein;
  @JsonKey(name: "fat")
  List<Category> get fat;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportCopyWith<Report> get copyWith =>
      _$ReportCopyWithImpl<Report>(this as Report, _$identity);

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Report &&
            const DeepCollectionEquality().equals(other.calories, calories) &&
            const DeepCollectionEquality()
                .equals(other.carbohydrates, carbohydrates) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.fat, fat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(calories),
      const DeepCollectionEquality().hash(carbohydrates),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(fat));

  @override
  String toString() {
    return 'Report(calories: $calories, carbohydrates: $carbohydrates, protein: $protein, fat: $fat)';
  }
}

/// @nodoc
abstract mixin class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) _then) =
      _$ReportCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "calories") List<Category> calories,
      @JsonKey(name: "carbohydrates") List<Category> carbohydrates,
      @JsonKey(name: "protein") List<Category> protein,
      @JsonKey(name: "fat") List<Category> fat});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res> implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._self, this._then);

  final Report _self;
  final $Res Function(Report) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? carbohydrates = null,
    Object? protein = null,
    Object? fat = null,
  }) {
    return _then(_self.copyWith(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      carbohydrates: null == carbohydrates
          ? _self.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      fat: null == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Report implements Report {
  const _Report(
      {@JsonKey(name: "calories") required final List<Category> calories,
      @JsonKey(name: "carbohydrates")
      required final List<Category> carbohydrates,
      @JsonKey(name: "protein") required final List<Category> protein,
      @JsonKey(name: "fat") required final List<Category> fat})
      : _calories = calories,
        _carbohydrates = carbohydrates,
        _protein = protein,
        _fat = fat;
  factory _Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

  final List<Category> _calories;
  @override
  @JsonKey(name: "calories")
  List<Category> get calories {
    if (_calories is EqualUnmodifiableListView) return _calories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calories);
  }

  final List<Category> _carbohydrates;
  @override
  @JsonKey(name: "carbohydrates")
  List<Category> get carbohydrates {
    if (_carbohydrates is EqualUnmodifiableListView) return _carbohydrates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carbohydrates);
  }

  final List<Category> _protein;
  @override
  @JsonKey(name: "protein")
  List<Category> get protein {
    if (_protein is EqualUnmodifiableListView) return _protein;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_protein);
  }

  final List<Category> _fat;
  @override
  @JsonKey(name: "fat")
  List<Category> get fat {
    if (_fat is EqualUnmodifiableListView) return _fat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fat);
  }

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportCopyWith<_Report> get copyWith =>
      __$ReportCopyWithImpl<_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Report &&
            const DeepCollectionEquality().equals(other._calories, _calories) &&
            const DeepCollectionEquality()
                .equals(other._carbohydrates, _carbohydrates) &&
            const DeepCollectionEquality().equals(other._protein, _protein) &&
            const DeepCollectionEquality().equals(other._fat, _fat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_calories),
      const DeepCollectionEquality().hash(_carbohydrates),
      const DeepCollectionEquality().hash(_protein),
      const DeepCollectionEquality().hash(_fat));

  @override
  String toString() {
    return 'Report(calories: $calories, carbohydrates: $carbohydrates, protein: $protein, fat: $fat)';
  }
}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) =
      __$ReportCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "calories") List<Category> calories,
      @JsonKey(name: "carbohydrates") List<Category> carbohydrates,
      @JsonKey(name: "protein") List<Category> protein,
      @JsonKey(name: "fat") List<Category> fat});
}

/// @nodoc
class __$ReportCopyWithImpl<$Res> implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calories = null,
    Object? carbohydrates = null,
    Object? protein = null,
    Object? fat = null,
  }) {
    return _then(_Report(
      calories: null == calories
          ? _self._calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      carbohydrates: null == carbohydrates
          ? _self._carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      protein: null == protein
          ? _self._protein
          : protein // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      fat: null == fat
          ? _self._fat
          : fat // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

// dart format on
