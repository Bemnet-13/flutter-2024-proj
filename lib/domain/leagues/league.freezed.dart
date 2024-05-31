// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$League {
  UniqueId get id => throw _privateConstructorUsedError;
  LeagueName get name => throw _privateConstructorUsedError;
  List<MemberId> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeagueCopyWith<League> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res, League>;
  @useResult
  $Res call({UniqueId id, LeagueName name, List<MemberId> members});
}

/// @nodoc
class _$LeagueCopyWithImpl<$Res, $Val extends League>
    implements $LeagueCopyWith<$Res> {
  _$LeagueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LeagueName,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeagueImplCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$$LeagueImplCopyWith(
          _$LeagueImpl value, $Res Function(_$LeagueImpl) then) =
      __$$LeagueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, LeagueName name, List<MemberId> members});
}

/// @nodoc
class __$$LeagueImplCopyWithImpl<$Res>
    extends _$LeagueCopyWithImpl<$Res, _$LeagueImpl>
    implements _$$LeagueImplCopyWith<$Res> {
  __$$LeagueImplCopyWithImpl(
      _$LeagueImpl _value, $Res Function(_$LeagueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? members = null,
  }) {
    return _then(_$LeagueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LeagueName,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberId>,
    ));
  }
}

/// @nodoc

class _$LeagueImpl with DiagnosticableTreeMixin implements _League {
  const _$LeagueImpl(
      {required this.id,
      required this.name,
      required final List<MemberId> members})
      : _members = members;

  @override
  final UniqueId id;
  @override
  final LeagueName name;
  final List<MemberId> _members;
  @override
  List<MemberId> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'League(id: $id, name: $name, members: $members)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'League'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('members', members));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueImplCopyWith<_$LeagueImpl> get copyWith =>
      __$$LeagueImplCopyWithImpl<_$LeagueImpl>(this, _$identity);
}

abstract class _League implements League {
  const factory _League(
      {required final UniqueId id,
      required final LeagueName name,
      required final List<MemberId> members}) = _$LeagueImpl;

  @override
  UniqueId get id;
  @override
  LeagueName get name;
  @override
  List<MemberId> get members;
  @override
  @JsonKey(ignore: true)
  _$$LeagueImplCopyWith<_$LeagueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
