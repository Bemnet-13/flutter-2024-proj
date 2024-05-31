// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvatarDto _$AvatarDtoFromJson(Map<String, dynamic> json) {
  return _AvatarDto.fromJson(json);
}

/// @nodoc
mixin _$AvatarDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get avatarName => throw _privateConstructorUsedError;
  String get avatarClub => throw _privateConstructorUsedError;
  int get avatarScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarDtoCopyWith<AvatarDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarDtoCopyWith<$Res> {
  factory $AvatarDtoCopyWith(AvatarDto value, $Res Function(AvatarDto) then) =
      _$AvatarDtoCopyWithImpl<$Res, AvatarDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String avatarName,
      String avatarClub,
      int avatarScore});
}

/// @nodoc
class _$AvatarDtoCopyWithImpl<$Res, $Val extends AvatarDto>
    implements $AvatarDtoCopyWith<$Res> {
  _$AvatarDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatarName = null,
    Object? avatarClub = null,
    Object? avatarScore = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarClub: null == avatarClub
          ? _value.avatarClub
          : avatarClub // ignore: cast_nullable_to_non_nullable
              as String,
      avatarScore: null == avatarScore
          ? _value.avatarScore
          : avatarScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarDtoImplCopyWith<$Res>
    implements $AvatarDtoCopyWith<$Res> {
  factory _$$AvatarDtoImplCopyWith(
          _$AvatarDtoImpl value, $Res Function(_$AvatarDtoImpl) then) =
      __$$AvatarDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String avatarName,
      String avatarClub,
      int avatarScore});
}

/// @nodoc
class __$$AvatarDtoImplCopyWithImpl<$Res>
    extends _$AvatarDtoCopyWithImpl<$Res, _$AvatarDtoImpl>
    implements _$$AvatarDtoImplCopyWith<$Res> {
  __$$AvatarDtoImplCopyWithImpl(
      _$AvatarDtoImpl _value, $Res Function(_$AvatarDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatarName = null,
    Object? avatarClub = null,
    Object? avatarScore = null,
  }) {
    return _then(_$AvatarDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarClub: null == avatarClub
          ? _value.avatarClub
          : avatarClub // ignore: cast_nullable_to_non_nullable
              as String,
      avatarScore: null == avatarScore
          ? _value.avatarScore
          : avatarScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarDtoImpl implements _AvatarDto {
  _$AvatarDtoImpl(
      {@JsonKey(ignore: true) this.id,
      required this.avatarName,
      required this.avatarClub,
      required this.avatarScore});

  factory _$AvatarDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarDtoImplFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String avatarName;
  @override
  final String avatarClub;
  @override
  final int avatarScore;

  @override
  String toString() {
    return 'AvatarDto(id: $id, avatarName: $avatarName, avatarClub: $avatarClub, avatarScore: $avatarScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarName, avatarName) ||
                other.avatarName == avatarName) &&
            (identical(other.avatarClub, avatarClub) ||
                other.avatarClub == avatarClub) &&
            (identical(other.avatarScore, avatarScore) ||
                other.avatarScore == avatarScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, avatarName, avatarClub, avatarScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarDtoImplCopyWith<_$AvatarDtoImpl> get copyWith =>
      __$$AvatarDtoImplCopyWithImpl<_$AvatarDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarDtoImplToJson(
      this,
    );
  }
}

abstract class _AvatarDto implements AvatarDto {
  factory _AvatarDto(
      {@JsonKey(ignore: true) final String? id,
      required final String avatarName,
      required final String avatarClub,
      required final int avatarScore}) = _$AvatarDtoImpl;

  factory _AvatarDto.fromJson(Map<String, dynamic> json) =
      _$AvatarDtoImpl.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get avatarName;
  @override
  String get avatarClub;
  @override
  int get avatarScore;
  @override
  @JsonKey(ignore: true)
  _$$AvatarDtoImplCopyWith<_$AvatarDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
