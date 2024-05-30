// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeagueDto _$LeagueDtoFromJson(Map<String, dynamic> json) {
  return _LeagueDto.fromJson(json);
}

/// @nodoc
mixin _$LeagueDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueDtoCopyWith<LeagueDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueDtoCopyWith<$Res> {
  factory $LeagueDtoCopyWith(LeagueDto value, $Res Function(LeagueDto) then) =
      _$LeagueDtoCopyWithImpl<$Res, LeagueDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id, String name, List<String> members});
}

/// @nodoc
class _$LeagueDtoCopyWithImpl<$Res, $Val extends LeagueDto>
    implements $LeagueDtoCopyWith<$Res> {
  _$LeagueDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? members = null,
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
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeagueDtoImplCopyWith<$Res>
    implements $LeagueDtoCopyWith<$Res> {
  factory _$$LeagueDtoImplCopyWith(
          _$LeagueDtoImpl value, $Res Function(_$LeagueDtoImpl) then) =
      __$$LeagueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id, String name, List<String> members});
}

/// @nodoc
class __$$LeagueDtoImplCopyWithImpl<$Res>
    extends _$LeagueDtoCopyWithImpl<$Res, _$LeagueDtoImpl>
    implements _$$LeagueDtoImplCopyWith<$Res> {
  __$$LeagueDtoImplCopyWithImpl(
      _$LeagueDtoImpl _value, $Res Function(_$LeagueDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? members = null,
  }) {
    return _then(_$LeagueDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeagueDtoImpl implements _LeagueDto {
  const _$LeagueDtoImpl(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required final List<String> members})
      : _members = members;

  factory _$LeagueDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeagueDtoImplFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'LeagueDto(id: $id, name: $name, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueDtoImplCopyWith<_$LeagueDtoImpl> get copyWith =>
      __$$LeagueDtoImplCopyWithImpl<_$LeagueDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeagueDtoImplToJson(
      this,
    );
  }
}

abstract class _LeagueDto implements LeagueDto {
  const factory _LeagueDto(
      {@JsonKey(ignore: true) final String? id,
      required final String name,
      required final List<String> members}) = _$LeagueDtoImpl;

  factory _LeagueDto.fromJson(Map<String, dynamic> json) =
      _$LeagueDtoImpl.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get name;
  @override
  List<String> get members;
  @override
  @JsonKey(ignore: true)
  _$$LeagueDtoImplCopyWith<_$LeagueDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
