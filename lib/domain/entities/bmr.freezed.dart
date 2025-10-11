// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BMR {
  String get result;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BMRCopyWith<BMR> get copyWith =>
      _$BMRCopyWithImpl<BMR>(this as BMR, _$identity);

  /// Serializes this BMR to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BMR &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'BMR(result: $result)';
  }
}

/// @nodoc
abstract mixin class $BMRCopyWith<$Res> {
  factory $BMRCopyWith(BMR value, $Res Function(BMR) _then) = _$BMRCopyWithImpl;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$BMRCopyWithImpl<$Res> implements $BMRCopyWith<$Res> {
  _$BMRCopyWithImpl(this._self, this._then);

  final BMR _self;
  final $Res Function(BMR) _then;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_self.copyWith(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BMR].
extension BMRPatterns on BMR {
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
    TResult Function(_BMR value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BMR() when $default != null:
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
    TResult Function(_BMR value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BMR():
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
    TResult? Function(_BMR value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BMR() when $default != null:
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
    TResult Function(String result)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BMR() when $default != null:
        return $default(_that.result);
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
    TResult Function(String result) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BMR():
        return $default(_that.result);
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
    TResult? Function(String result)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BMR() when $default != null:
        return $default(_that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BMR implements BMR {
  const _BMR({required this.result});
  factory _BMR.fromJson(Map<String, dynamic> json) => _$BMRFromJson(json);

  @override
  final String result;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BMRCopyWith<_BMR> get copyWith =>
      __$BMRCopyWithImpl<_BMR>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BMRToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BMR &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'BMR(result: $result)';
  }
}

/// @nodoc
abstract mixin class _$BMRCopyWith<$Res> implements $BMRCopyWith<$Res> {
  factory _$BMRCopyWith(_BMR value, $Res Function(_BMR) _then) =
      __$BMRCopyWithImpl;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$BMRCopyWithImpl<$Res> implements _$BMRCopyWith<$Res> {
  __$BMRCopyWithImpl(this._self, this._then);

  final _BMR _self;
  final $Res Function(_BMR) _then;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(_BMR(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
