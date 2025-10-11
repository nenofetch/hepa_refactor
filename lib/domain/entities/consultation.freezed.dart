// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Consultation {
  @JsonKey(name: "id")
  int get id;
  @JsonKey(name: "sender_id")
  int get senderId;
  @JsonKey(name: "recipient_id")
  int get recipientId;
  @JsonKey(name: "message")
  String get message;
  @JsonKey(name: "attachment")
  String? get attachment;
  @JsonKey(name: "status")
  String get status;
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConsultationCopyWith<Consultation> get copyWith =>
      _$ConsultationCopyWithImpl<Consultation>(
          this as Consultation, _$identity);

  /// Serializes this Consultation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Consultation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, recipientId,
      message, attachment, status, createdAt, updatedAt);

  @override
  String toString() {
    return 'Consultation(id: $id, senderId: $senderId, recipientId: $recipientId, message: $message, attachment: $attachment, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ConsultationCopyWith<$Res> {
  factory $ConsultationCopyWith(
          Consultation value, $Res Function(Consultation) _then) =
      _$ConsultationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "sender_id") int senderId,
      @JsonKey(name: "recipient_id") int recipientId,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "attachment") String? attachment,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class _$ConsultationCopyWithImpl<$Res> implements $ConsultationCopyWith<$Res> {
  _$ConsultationCopyWithImpl(this._self, this._then);

  final Consultation _self;
  final $Res Function(Consultation) _then;

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? message = null,
    Object? attachment = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      recipientId: null == recipientId
          ? _self.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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

/// Adds pattern-matching-related methods to [Consultation].
extension ConsultationPatterns on Consultation {
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
    TResult Function(_Consultation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Consultation() when $default != null:
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
    TResult Function(_Consultation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consultation():
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
    TResult? Function(_Consultation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consultation() when $default != null:
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
    TResult Function(
            @JsonKey(name: "id") int id,
            @JsonKey(name: "sender_id") int senderId,
            @JsonKey(name: "recipient_id") int recipientId,
            @JsonKey(name: "message") String message,
            @JsonKey(name: "attachment") String? attachment,
            @JsonKey(name: "status") String status,
            @JsonKey(name: "created_at") DateTime createdAt,
            @JsonKey(name: "updated_at") DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Consultation() when $default != null:
        return $default(
            _that.id,
            _that.senderId,
            _that.recipientId,
            _that.message,
            _that.attachment,
            _that.status,
            _that.createdAt,
            _that.updatedAt);
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
    TResult Function(
            @JsonKey(name: "id") int id,
            @JsonKey(name: "sender_id") int senderId,
            @JsonKey(name: "recipient_id") int recipientId,
            @JsonKey(name: "message") String message,
            @JsonKey(name: "attachment") String? attachment,
            @JsonKey(name: "status") String status,
            @JsonKey(name: "created_at") DateTime createdAt,
            @JsonKey(name: "updated_at") DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consultation():
        return $default(
            _that.id,
            _that.senderId,
            _that.recipientId,
            _that.message,
            _that.attachment,
            _that.status,
            _that.createdAt,
            _that.updatedAt);
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
    TResult? Function(
            @JsonKey(name: "id") int id,
            @JsonKey(name: "sender_id") int senderId,
            @JsonKey(name: "recipient_id") int recipientId,
            @JsonKey(name: "message") String message,
            @JsonKey(name: "attachment") String? attachment,
            @JsonKey(name: "status") String status,
            @JsonKey(name: "created_at") DateTime createdAt,
            @JsonKey(name: "updated_at") DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Consultation() when $default != null:
        return $default(
            _that.id,
            _that.senderId,
            _that.recipientId,
            _that.message,
            _that.attachment,
            _that.status,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Consultation implements Consultation {
  const _Consultation(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "sender_id") required this.senderId,
      @JsonKey(name: "recipient_id") required this.recipientId,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "attachment") this.attachment,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt});
  factory _Consultation.fromJson(Map<String, dynamic> json) =>
      _$ConsultationFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "sender_id")
  final int senderId;
  @override
  @JsonKey(name: "recipient_id")
  final int recipientId;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "attachment")
  final String? attachment;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConsultationCopyWith<_Consultation> get copyWith =>
      __$ConsultationCopyWithImpl<_Consultation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConsultationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Consultation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, recipientId,
      message, attachment, status, createdAt, updatedAt);

  @override
  String toString() {
    return 'Consultation(id: $id, senderId: $senderId, recipientId: $recipientId, message: $message, attachment: $attachment, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ConsultationCopyWith<$Res>
    implements $ConsultationCopyWith<$Res> {
  factory _$ConsultationCopyWith(
          _Consultation value, $Res Function(_Consultation) _then) =
      __$ConsultationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "sender_id") int senderId,
      @JsonKey(name: "recipient_id") int recipientId,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "attachment") String? attachment,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});
}

/// @nodoc
class __$ConsultationCopyWithImpl<$Res>
    implements _$ConsultationCopyWith<$Res> {
  __$ConsultationCopyWithImpl(this._self, this._then);

  final _Consultation _self;
  final $Res Function(_Consultation) _then;

  /// Create a copy of Consultation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? recipientId = null,
    Object? message = null,
    Object? attachment = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Consultation(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      recipientId: null == recipientId
          ? _self.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _self.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
