// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Consultation _$ConsultationFromJson(Map<String, dynamic> json) {
  return _Consultation.fromJson(json);
}

/// @nodoc
mixin _$Consultation {
  @JsonKey(name: 'receipent_id')
  List<User>? get receipentId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultationCopyWith<Consultation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationCopyWith<$Res> {
  factory $ConsultationCopyWith(
          Consultation value, $Res Function(Consultation) then) =
      _$ConsultationCopyWithImpl<$Res, Consultation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'receipent_id') List<User>? receipentId,
      String? message,
      String? attachment,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$ConsultationCopyWithImpl<$Res, $Val extends Consultation>
    implements $ConsultationCopyWith<$Res> {
  _$ConsultationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipentId = freezed,
    Object? message = freezed,
    Object? attachment = freezed,
    Object? senderId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      receipentId: freezed == receipentId
          ? _value.receipentId
          : receipentId // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultationImplCopyWith<$Res>
    implements $ConsultationCopyWith<$Res> {
  factory _$$ConsultationImplCopyWith(
          _$ConsultationImpl value, $Res Function(_$ConsultationImpl) then) =
      __$$ConsultationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'receipent_id') List<User>? receipentId,
      String? message,
      String? attachment,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$ConsultationImplCopyWithImpl<$Res>
    extends _$ConsultationCopyWithImpl<$Res, _$ConsultationImpl>
    implements _$$ConsultationImplCopyWith<$Res> {
  __$$ConsultationImplCopyWithImpl(
      _$ConsultationImpl _value, $Res Function(_$ConsultationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipentId = freezed,
    Object? message = freezed,
    Object? attachment = freezed,
    Object? senderId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ConsultationImpl(
      receipentId: freezed == receipentId
          ? _value._receipentId
          : receipentId // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationImpl implements _Consultation {
  const _$ConsultationImpl(
      {@JsonKey(name: 'receipent_id') final List<User>? receipentId,
      this.message,
      this.attachment,
      @JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _receipentId = receipentId;

  factory _$ConsultationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationImplFromJson(json);

  final List<User>? _receipentId;
  @override
  @JsonKey(name: 'receipent_id')
  List<User>? get receipentId {
    final value = _receipentId;
    if (value == null) return null;
    if (_receipentId is EqualUnmodifiableListView) return _receipentId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  final String? attachment;
  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'Consultation(receipentId: $receipentId, message: $message, attachment: $attachment, senderId: $senderId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationImpl &&
            const DeepCollectionEquality()
                .equals(other._receipentId, _receipentId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_receipentId),
      message,
      attachment,
      senderId,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationImplCopyWith<_$ConsultationImpl> get copyWith =>
      __$$ConsultationImplCopyWithImpl<_$ConsultationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationImplToJson(
      this,
    );
  }
}

abstract class _Consultation implements Consultation {
  const factory _Consultation(
          {@JsonKey(name: 'receipent_id') final List<User>? receipentId,
          final String? message,
          final String? attachment,
          @JsonKey(name: 'sender_id') final int? senderId,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$ConsultationImpl;

  factory _Consultation.fromJson(Map<String, dynamic> json) =
      _$ConsultationImpl.fromJson;

  @override
  @JsonKey(name: 'receipent_id')
  List<User>? get receipentId;
  @override
  String? get message;
  @override
  String? get attachment;
  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ConsultationImplCopyWith<_$ConsultationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
