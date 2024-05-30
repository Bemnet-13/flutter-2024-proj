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
  String get name => throw _privateConstructorUsedError;
  String get club => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

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
      {@JsonKey(ignore: true) String? id, String name, String club, int score});
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
    Object? name = null,
    Object? club = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(ignore: true) String? id, String name, String club, int score});
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
    Object? name = null,
    Object? club = null,
    Object? score = null,
  }) {
    return _then(_$AvatarDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarDtoImpl implements _AvatarDto {
  _$AvatarDtoImpl(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.club,
      required this.score});

  factory _$AvatarDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarDtoImplFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  @override
  final String club;
  @override
  final int score;

  @override
  String toString() {
    return 'AvatarDto(id: $id, name: $name, club: $club, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.club, club) || other.club == club) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, club, score);

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
      required final String name,
      required final String club,
      required final int score}) = _$AvatarDtoImpl;

  factory _AvatarDto.fromJson(Map<String, dynamic> json) =
      _$AvatarDtoImpl.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get name;
  @override
  String get club;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$AvatarDtoImplCopyWith<_$AvatarDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
