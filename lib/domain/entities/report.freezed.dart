// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  @JsonKey(name: "calories")
  List<Category> get calories => throw _privateConstructorUsedError;
  @JsonKey(name: "carbohydrates")
  List<Category> get carbohydrates => throw _privateConstructorUsedError;
  @JsonKey(name: "protein")
  List<Category> get protein => throw _privateConstructorUsedError;
  @JsonKey(name: "fat")
  List<Category> get fat => throw _privateConstructorUsedError;

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {@JsonKey(name: "calories") List<Category> calories,
      @JsonKey(name: "carbohydrates") List<Category> carbohydrates,
      @JsonKey(name: "protein") List<Category> protein,
      @JsonKey(name: "fat") List<Category> fat});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
          _$ReportImpl value, $Res Function(_$ReportImpl) then) =
      __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "calories") List<Category> calories,
      @JsonKey(name: "carbohydrates") List<Category> carbohydrates,
      @JsonKey(name: "protein") List<Category> protein,
      @JsonKey(name: "fat") List<Category> fat});
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
      _$ReportImpl _value, $Res Function(_$ReportImpl) _then)
      : super(_value, _then);

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
    return _then(_$ReportImpl(
      calories: null == calories
          ? _value._calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      carbohydrates: null == carbohydrates
          ? _value._carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      protein: null == protein
          ? _value._protein
          : protein // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      fat: null == fat
          ? _value._fat
          : fat // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportImpl implements _Report {
  const _$ReportImpl(
      {@JsonKey(name: "calories") required final List<Category> calories,
      @JsonKey(name: "carbohydrates")
      required final List<Category> carbohydrates,
      @JsonKey(name: "protein") required final List<Category> protein,
      @JsonKey(name: "fat") required final List<Category> fat})
      : _calories = calories,
        _carbohydrates = carbohydrates,
        _protein = protein,
        _fat = fat;

  factory _$ReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportImplFromJson(json);

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

  @override
  String toString() {
    return 'Report(calories: $calories, carbohydrates: $carbohydrates, protein: $protein, fat: $fat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
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

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportImplToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {@JsonKey(name: "calories") required final List<Category> calories,
      @JsonKey(name: "carbohydrates")
      required final List<Category> carbohydrates,
      @JsonKey(name: "protein") required final List<Category> protein,
      @JsonKey(name: "fat") required final List<Category> fat}) = _$ReportImpl;

  factory _Report.fromJson(Map<String, dynamic> json) = _$ReportImpl.fromJson;

  @override
  @JsonKey(name: "calories")
  List<Category> get calories;
  @override
  @JsonKey(name: "carbohydrates")
  List<Category> get carbohydrates;
  @override
  @JsonKey(name: "protein")
  List<Category> get protein;
  @override
  @JsonKey(name: "fat")
  List<Category> get fat;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @JsonKey(name: "day")
  String get day => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@JsonKey(name: "day") String day, @JsonKey(name: "total") int total});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day") String day, @JsonKey(name: "total") int total});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? total = null,
  }) {
    return _then(_$CategoryImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {@JsonKey(name: "day") required this.day,
      @JsonKey(name: "total") required this.total});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey(name: "day")
  final String day;
  @override
  @JsonKey(name: "total")
  final int total;

  @override
  String toString() {
    return 'Category(day: $day, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, total);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {@JsonKey(name: "day") required final String day,
      @JsonKey(name: "total") required final int total}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @JsonKey(name: "day")
  String get day;
  @override
  @JsonKey(name: "total")
  int get total;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
