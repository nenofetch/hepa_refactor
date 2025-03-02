// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_report_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DetailReportData _$DetailReportDataFromJson(Map<String, dynamic> json) {
  return _DetailReport.fromJson(json);
}

/// @nodoc
mixin _$DetailReportData {
  @JsonKey(name: "breakfast")
  List<Data> get breakfast;
  @JsonKey(name: "lunch")
  List<Data> get lunch;
  @JsonKey(name: "dinner")
  List<Data> get dinner;
  @JsonKey(name: "snack")
  List<Data> get snack;
  @JsonKey(name: "drink")
  List<Data> get drink;
  @JsonKey(name: "sports")
  List<Data> get sports;
  @JsonKey(name: "bmr")
  List<Data> get bmr;
  @JsonKey(name: "bmi")
  List<Data> get bmi;

  /// Create a copy of DetailReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailReportDataCopyWith<DetailReportData> get copyWith =>
      _$DetailReportDataCopyWithImpl<DetailReportData>(
          this as DetailReportData, _$identity);

  /// Serializes this DetailReportData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailReportData &&
            const DeepCollectionEquality().equals(other.breakfast, breakfast) &&
            const DeepCollectionEquality().equals(other.lunch, lunch) &&
            const DeepCollectionEquality().equals(other.dinner, dinner) &&
            const DeepCollectionEquality().equals(other.snack, snack) &&
            const DeepCollectionEquality().equals(other.drink, drink) &&
            const DeepCollectionEquality().equals(other.sports, sports) &&
            const DeepCollectionEquality().equals(other.bmr, bmr) &&
            const DeepCollectionEquality().equals(other.bmi, bmi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(breakfast),
      const DeepCollectionEquality().hash(lunch),
      const DeepCollectionEquality().hash(dinner),
      const DeepCollectionEquality().hash(snack),
      const DeepCollectionEquality().hash(drink),
      const DeepCollectionEquality().hash(sports),
      const DeepCollectionEquality().hash(bmr),
      const DeepCollectionEquality().hash(bmi));

  @override
  String toString() {
    return 'DetailReportData(breakfast: $breakfast, lunch: $lunch, dinner: $dinner, snack: $snack, drink: $drink, sports: $sports, bmr: $bmr, bmi: $bmi)';
  }
}

/// @nodoc
abstract mixin class $DetailReportDataCopyWith<$Res> {
  factory $DetailReportDataCopyWith(
          DetailReportData value, $Res Function(DetailReportData) _then) =
      _$DetailReportDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "breakfast") List<Data> breakfast,
      @JsonKey(name: "lunch") List<Data> lunch,
      @JsonKey(name: "dinner") List<Data> dinner,
      @JsonKey(name: "snack") List<Data> snack,
      @JsonKey(name: "drink") List<Data> drink,
      @JsonKey(name: "sports") List<Data> sports,
      @JsonKey(name: "bmr") List<Data> bmr,
      @JsonKey(name: "bmi") List<Data> bmi});
}

/// @nodoc
class _$DetailReportDataCopyWithImpl<$Res>
    implements $DetailReportDataCopyWith<$Res> {
  _$DetailReportDataCopyWithImpl(this._self, this._then);

  final DetailReportData _self;
  final $Res Function(DetailReportData) _then;

  /// Create a copy of DetailReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakfast = null,
    Object? lunch = null,
    Object? dinner = null,
    Object? snack = null,
    Object? drink = null,
    Object? sports = null,
    Object? bmr = null,
    Object? bmi = null,
  }) {
    return _then(_self.copyWith(
      breakfast: null == breakfast
          ? _self.breakfast
          : breakfast // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      lunch: null == lunch
          ? _self.lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      dinner: null == dinner
          ? _self.dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      snack: null == snack
          ? _self.snack
          : snack // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      drink: null == drink
          ? _self.drink
          : drink // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      sports: null == sports
          ? _self.sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      bmr: null == bmr
          ? _self.bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      bmi: null == bmi
          ? _self.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DetailReport implements DetailReportData {
  const _DetailReport(
      {@JsonKey(name: "breakfast") required final List<Data> breakfast,
      @JsonKey(name: "lunch") required final List<Data> lunch,
      @JsonKey(name: "dinner") required final List<Data> dinner,
      @JsonKey(name: "snack") required final List<Data> snack,
      @JsonKey(name: "drink") required final List<Data> drink,
      @JsonKey(name: "sports") required final List<Data> sports,
      @JsonKey(name: "bmr") required final List<Data> bmr,
      @JsonKey(name: "bmi") required final List<Data> bmi})
      : _breakfast = breakfast,
        _lunch = lunch,
        _dinner = dinner,
        _snack = snack,
        _drink = drink,
        _sports = sports,
        _bmr = bmr,
        _bmi = bmi;
  factory _DetailReport.fromJson(Map<String, dynamic> json) =>
      _$DetailReportFromJson(json);

  final List<Data> _breakfast;
  @override
  @JsonKey(name: "breakfast")
  List<Data> get breakfast {
    if (_breakfast is EqualUnmodifiableListView) return _breakfast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breakfast);
  }

  final List<Data> _lunch;
  @override
  @JsonKey(name: "lunch")
  List<Data> get lunch {
    if (_lunch is EqualUnmodifiableListView) return _lunch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lunch);
  }

  final List<Data> _dinner;
  @override
  @JsonKey(name: "dinner")
  List<Data> get dinner {
    if (_dinner is EqualUnmodifiableListView) return _dinner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dinner);
  }

  final List<Data> _snack;
  @override
  @JsonKey(name: "snack")
  List<Data> get snack {
    if (_snack is EqualUnmodifiableListView) return _snack;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snack);
  }

  final List<Data> _drink;
  @override
  @JsonKey(name: "drink")
  List<Data> get drink {
    if (_drink is EqualUnmodifiableListView) return _drink;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drink);
  }

  final List<Data> _sports;
  @override
  @JsonKey(name: "sports")
  List<Data> get sports {
    if (_sports is EqualUnmodifiableListView) return _sports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sports);
  }

  final List<Data> _bmr;
  @override
  @JsonKey(name: "bmr")
  List<Data> get bmr {
    if (_bmr is EqualUnmodifiableListView) return _bmr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bmr);
  }

  final List<Data> _bmi;
  @override
  @JsonKey(name: "bmi")
  List<Data> get bmi {
    if (_bmi is EqualUnmodifiableListView) return _bmi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bmi);
  }

  /// Create a copy of DetailReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailReportCopyWith<_DetailReport> get copyWith =>
      __$DetailReportCopyWithImpl<_DetailReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DetailReportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailReport &&
            const DeepCollectionEquality()
                .equals(other._breakfast, _breakfast) &&
            const DeepCollectionEquality().equals(other._lunch, _lunch) &&
            const DeepCollectionEquality().equals(other._dinner, _dinner) &&
            const DeepCollectionEquality().equals(other._snack, _snack) &&
            const DeepCollectionEquality().equals(other._drink, _drink) &&
            const DeepCollectionEquality().equals(other._sports, _sports) &&
            const DeepCollectionEquality().equals(other._bmr, _bmr) &&
            const DeepCollectionEquality().equals(other._bmi, _bmi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breakfast),
      const DeepCollectionEquality().hash(_lunch),
      const DeepCollectionEquality().hash(_dinner),
      const DeepCollectionEquality().hash(_snack),
      const DeepCollectionEquality().hash(_drink),
      const DeepCollectionEquality().hash(_sports),
      const DeepCollectionEquality().hash(_bmr),
      const DeepCollectionEquality().hash(_bmi));

  @override
  String toString() {
    return 'DetailReportData(breakfast: $breakfast, lunch: $lunch, dinner: $dinner, snack: $snack, drink: $drink, sports: $sports, bmr: $bmr, bmi: $bmi)';
  }
}

/// @nodoc
abstract mixin class _$DetailReportCopyWith<$Res>
    implements $DetailReportDataCopyWith<$Res> {
  factory _$DetailReportCopyWith(
          _DetailReport value, $Res Function(_DetailReport) _then) =
      __$DetailReportCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "breakfast") List<Data> breakfast,
      @JsonKey(name: "lunch") List<Data> lunch,
      @JsonKey(name: "dinner") List<Data> dinner,
      @JsonKey(name: "snack") List<Data> snack,
      @JsonKey(name: "drink") List<Data> drink,
      @JsonKey(name: "sports") List<Data> sports,
      @JsonKey(name: "bmr") List<Data> bmr,
      @JsonKey(name: "bmi") List<Data> bmi});
}

/// @nodoc
class __$DetailReportCopyWithImpl<$Res>
    implements _$DetailReportCopyWith<$Res> {
  __$DetailReportCopyWithImpl(this._self, this._then);

  final _DetailReport _self;
  final $Res Function(_DetailReport) _then;

  /// Create a copy of DetailReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? breakfast = null,
    Object? lunch = null,
    Object? dinner = null,
    Object? snack = null,
    Object? drink = null,
    Object? sports = null,
    Object? bmr = null,
    Object? bmi = null,
  }) {
    return _then(_DetailReport(
      breakfast: null == breakfast
          ? _self._breakfast
          : breakfast // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      lunch: null == lunch
          ? _self._lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      dinner: null == dinner
          ? _self._dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      snack: null == snack
          ? _self._snack
          : snack // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      drink: null == drink
          ? _self._drink
          : drink // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      sports: null == sports
          ? _self._sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      bmr: null == bmr
          ? _self._bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as List<Data>,
      bmi: null == bmi
          ? _self._bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "id")
  int get id;
  @JsonKey(name: "user_id")
  int get userId;
  @JsonKey(name: "category")
  String get category;
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "calories")
  String get calories;
  @JsonKey(name: "carbohydrates")
  String get carbohydrates;
  @JsonKey(name: "protein")
  String get protein;
  @JsonKey(name: "fat")
  String get fat;
  @JsonKey(name: "duration")
  String? get duration;
  @JsonKey(name: "result_bmi")
  String? get resultBmi;
  @JsonKey(name: "result_bmr")
  String? get resultBmr;
  @JsonKey(name: "weight")
  double? get weight;
  @JsonKey(name: "height")
  double? get height;
  @JsonKey(name: "imt")
  double? get imt;
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.resultBmi, resultBmi) ||
                other.resultBmi == resultBmi) &&
            (identical(other.resultBmr, resultBmr) ||
                other.resultBmr == resultBmr) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.imt, imt) || other.imt == imt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      category,
      name,
      calories,
      carbohydrates,
      protein,
      fat,
      duration,
      resultBmi,
      resultBmr,
      weight,
      height,
      imt,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'Data(id: $id, userId: $userId, category: $category, name: $name, calories: $calories, carbohydrates: $carbohydrates, protein: $protein, fat: $fat, duration: $duration, resultBmi: $resultBmi, resultBmr: $resultBmr, weight: $weight, height: $height, imt: $imt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "calories") String calories,
      @JsonKey(name: "carbohydrates") String carbohydrates,
      @JsonKey(name: "protein") String protein,
      @JsonKey(name: "fat") String fat,
      @JsonKey(name: "duration") String? duration,
      @JsonKey(name: "result_bmi") String? resultBmi,
      @JsonKey(name: "result_bmr") String? resultBmr,
      @JsonKey(name: "weight") double? weight,
      @JsonKey(name: "height") double? height,
      @JsonKey(name: "imt") double? imt,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? category = null,
    Object? name = null,
    Object? calories = null,
    Object? carbohydrates = null,
    Object? protein = null,
    Object? fat = null,
    Object? duration = freezed,
    Object? resultBmi = freezed,
    Object? resultBmr = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? imt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrates: null == carbohydrates
          ? _self.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      resultBmi: freezed == resultBmi
          ? _self.resultBmi
          : resultBmi // ignore: cast_nullable_to_non_nullable
              as String?,
      resultBmr: freezed == resultBmr
          ? _self.resultBmr
          : resultBmr // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      imt: freezed == imt
          ? _self.imt
          : imt // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Data implements Data {
  const _Data(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "category") required this.category,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "calories") required this.calories,
      @JsonKey(name: "carbohydrates") required this.carbohydrates,
      @JsonKey(name: "protein") required this.protein,
      @JsonKey(name: "fat") required this.fat,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "result_bmi") this.resultBmi,
      @JsonKey(name: "result_bmr") this.resultBmr,
      @JsonKey(name: "weight") this.weight,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "imt") this.imt,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "calories")
  final String calories;
  @override
  @JsonKey(name: "carbohydrates")
  final String carbohydrates;
  @override
  @JsonKey(name: "protein")
  final String protein;
  @override
  @JsonKey(name: "fat")
  final String fat;
  @override
  @JsonKey(name: "duration")
  final String? duration;
  @override
  @JsonKey(name: "result_bmi")
  final String? resultBmi;
  @override
  @JsonKey(name: "result_bmr")
  final String? resultBmr;
  @override
  @JsonKey(name: "weight")
  final double? weight;
  @override
  @JsonKey(name: "height")
  final double? height;
  @override
  @JsonKey(name: "imt")
  final double? imt;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.resultBmi, resultBmi) ||
                other.resultBmi == resultBmi) &&
            (identical(other.resultBmr, resultBmr) ||
                other.resultBmr == resultBmr) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.imt, imt) || other.imt == imt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      category,
      name,
      calories,
      carbohydrates,
      protein,
      fat,
      duration,
      resultBmi,
      resultBmr,
      weight,
      height,
      imt,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'Data(id: $id, userId: $userId, category: $category, name: $name, calories: $calories, carbohydrates: $carbohydrates, protein: $protein, fat: $fat, duration: $duration, resultBmi: $resultBmi, resultBmr: $resultBmr, weight: $weight, height: $height, imt: $imt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "calories") String calories,
      @JsonKey(name: "carbohydrates") String carbohydrates,
      @JsonKey(name: "protein") String protein,
      @JsonKey(name: "fat") String fat,
      @JsonKey(name: "duration") String? duration,
      @JsonKey(name: "result_bmi") String? resultBmi,
      @JsonKey(name: "result_bmr") String? resultBmr,
      @JsonKey(name: "weight") double? weight,
      @JsonKey(name: "height") double? height,
      @JsonKey(name: "imt") double? imt,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? category = null,
    Object? name = null,
    Object? calories = null,
    Object? carbohydrates = null,
    Object? protein = null,
    Object? fat = null,
    Object? duration = freezed,
    Object? resultBmi = freezed,
    Object? resultBmr = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? imt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Data(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrates: null == carbohydrates
          ? _self.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      resultBmi: freezed == resultBmi
          ? _self.resultBmi
          : resultBmi // ignore: cast_nullable_to_non_nullable
              as String?,
      resultBmr: freezed == resultBmr
          ? _self.resultBmr
          : resultBmr // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      imt: freezed == imt
          ? _self.imt
          : imt // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
