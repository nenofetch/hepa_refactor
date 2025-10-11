// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  String? get educationName;
  @JsonKey(name: "tgl_input")
  String? get tglInput;

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
      {@JsonKey(name: "education_name") String? educationName,
      @JsonKey(name: "tgl_input") String? tglInput});
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
    Object? educationName = freezed,
    Object? tglInput = freezed,
  }) {
    return _then(_self.copyWith(
      educationName: freezed == educationName
          ? _self.educationName
          : educationName // ignore: cast_nullable_to_non_nullable
              as String?,
      tglInput: freezed == tglInput
          ? _self.tglInput
          : tglInput // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EducationHistory].
extension EducationHistoryPatterns on EducationHistory {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EducationHistory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EducationHistory() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EducationHistory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EducationHistory():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EducationHistory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EducationHistory() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: "education_name") String? educationName,
            @JsonKey(name: "tgl_input") String? tglInput)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EducationHistory() when $default != null:
        return $default(_that.educationName, _that.tglInput);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: "education_name") String? educationName,
            @JsonKey(name: "tgl_input") String? tglInput)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EducationHistory():
        return $default(_that.educationName, _that.tglInput);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: "education_name") String? educationName,
            @JsonKey(name: "tgl_input") String? tglInput)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EducationHistory() when $default != null:
        return $default(_that.educationName, _that.tglInput);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EducationHistory implements EducationHistory {
  const _EducationHistory(
      {@JsonKey(name: "education_name") this.educationName,
      @JsonKey(name: "tgl_input") this.tglInput});
  factory _EducationHistory.fromJson(Map<String, dynamic> json) =>
      _$EducationHistoryFromJson(json);

  @override
  @JsonKey(name: "education_name")
  final String? educationName;
  @override
  @JsonKey(name: "tgl_input")
  final String? tglInput;

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
      {@JsonKey(name: "education_name") String? educationName,
      @JsonKey(name: "tgl_input") String? tglInput});
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
    Object? educationName = freezed,
    Object? tglInput = freezed,
  }) {
    return _then(_EducationHistory(
      educationName: freezed == educationName
          ? _self.educationName
          : educationName // ignore: cast_nullable_to_non_nullable
              as String?,
      tglInput: freezed == tglInput
          ? _self.tglInput
          : tglInput // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
