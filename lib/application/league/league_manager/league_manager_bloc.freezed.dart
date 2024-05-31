// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeagueManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(
            LeagueName name, UniqueId id, List<MemberId> members)
        leagueSelected,
    required TResult Function() createLeaguePressed,
    required TResult Function() updateLeaguePressed,
    required TResult Function() deleteLeagueTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult? Function()? createLeaguePressed,
    TResult? Function()? updateLeaguePressed,
    TResult? Function()? deleteLeagueTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult Function()? createLeaguePressed,
    TResult Function()? updateLeaguePressed,
    TResult Function()? deleteLeagueTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(LeagueSelected value) leagueSelected,
    required TResult Function(CreateLeaguePressed value) createLeaguePressed,
    required TResult Function(UpdateLeaguePressed value) updateLeaguePressed,
    required TResult Function(DeleteLeagueTriggered value)
        deleteLeagueTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(LeagueSelected value)? leagueSelected,
    TResult? Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult? Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult? Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(LeagueSelected value)? leagueSelected,
    TResult Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueManagerEventCopyWith<$Res> {
  factory $LeagueManagerEventCopyWith(
          LeagueManagerEvent value, $Res Function(LeagueManagerEvent) then) =
      _$LeagueManagerEventCopyWithImpl<$Res, LeagueManagerEvent>;
}

/// @nodoc
class _$LeagueManagerEventCopyWithImpl<$Res, $Val extends LeagueManagerEvent>
    implements $LeagueManagerEventCopyWith<$Res> {
  _$LeagueManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$LeagueManagerEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChangedImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements NameChanged {
  const _$NameChangedImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'LeagueManagerEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(
            LeagueName name, UniqueId id, List<MemberId> members)
        leagueSelected,
    required TResult Function() createLeaguePressed,
    required TResult Function() updateLeaguePressed,
    required TResult Function() deleteLeagueTriggered,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult? Function()? createLeaguePressed,
    TResult? Function()? updateLeaguePressed,
    TResult? Function()? deleteLeagueTriggered,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult Function()? createLeaguePressed,
    TResult Function()? updateLeaguePressed,
    TResult Function()? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(LeagueSelected value) leagueSelected,
    required TResult Function(CreateLeaguePressed value) createLeaguePressed,
    required TResult Function(UpdateLeaguePressed value) updateLeaguePressed,
    required TResult Function(DeleteLeagueTriggered value)
        deleteLeagueTriggered,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(LeagueSelected value)? leagueSelected,
    TResult? Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult? Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult? Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(LeagueSelected value)? leagueSelected,
    TResult Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements LeagueManagerEvent {
  const factory NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdSetImplCopyWith<$Res> {
  factory _$$IdSetImplCopyWith(
          _$IdSetImpl value, $Res Function(_$IdSetImpl) then) =
      __$$IdSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$IdSetImplCopyWithImpl<$Res>
    extends _$LeagueManagerEventCopyWithImpl<$Res, _$IdSetImpl>
    implements _$$IdSetImplCopyWith<$Res> {
  __$$IdSetImplCopyWithImpl(
      _$IdSetImpl _value, $Res Function(_$IdSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$IdSetImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$IdSetImpl implements IdSet {
  const _$IdSetImpl(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'LeagueManagerEvent.idSet(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdSetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdSetImplCopyWith<_$IdSetImpl> get copyWith =>
      __$$IdSetImplCopyWithImpl<_$IdSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(
            LeagueName name, UniqueId id, List<MemberId> members)
        leagueSelected,
    required TResult Function() createLeaguePressed,
    required TResult Function() updateLeaguePressed,
    required TResult Function() deleteLeagueTriggered,
  }) {
    return idSet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult? Function()? createLeaguePressed,
    TResult? Function()? updateLeaguePressed,
    TResult? Function()? deleteLeagueTriggered,
  }) {
    return idSet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult Function()? createLeaguePressed,
    TResult Function()? updateLeaguePressed,
    TResult Function()? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (idSet != null) {
      return idSet(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(LeagueSelected value) leagueSelected,
    required TResult Function(CreateLeaguePressed value) createLeaguePressed,
    required TResult Function(UpdateLeaguePressed value) updateLeaguePressed,
    required TResult Function(DeleteLeagueTriggered value)
        deleteLeagueTriggered,
  }) {
    return idSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(LeagueSelected value)? leagueSelected,
    TResult? Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult? Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult? Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
  }) {
    return idSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(LeagueSelected value)? leagueSelected,
    TResult Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (idSet != null) {
      return idSet(this);
    }
    return orElse();
  }
}

abstract class IdSet implements LeagueManagerEvent {
  const factory IdSet(final UniqueId id) = _$IdSetImpl;

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$IdSetImplCopyWith<_$IdSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeagueSelectedImplCopyWith<$Res> {
  factory _$$LeagueSelectedImplCopyWith(_$LeagueSelectedImpl value,
          $Res Function(_$LeagueSelectedImpl) then) =
      __$$LeagueSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LeagueName name, UniqueId id, List<MemberId> members});
}

/// @nodoc
class __$$LeagueSelectedImplCopyWithImpl<$Res>
    extends _$LeagueManagerEventCopyWithImpl<$Res, _$LeagueSelectedImpl>
    implements _$$LeagueSelectedImplCopyWith<$Res> {
  __$$LeagueSelectedImplCopyWithImpl(
      _$LeagueSelectedImpl _value, $Res Function(_$LeagueSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? members = null,
  }) {
    return _then(_$LeagueSelectedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LeagueName,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberId>,
    ));
  }
}

/// @nodoc

class _$LeagueSelectedImpl implements LeagueSelected {
  const _$LeagueSelectedImpl(this.name, this.id, final List<MemberId> members)
      : _members = members;

  @override
  final LeagueName name;
  @override
  final UniqueId id;
  final List<MemberId> _members;
  @override
  List<MemberId> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'LeagueManagerEvent.leagueSelected(name: $name, id: $id, members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueSelectedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, id, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueSelectedImplCopyWith<_$LeagueSelectedImpl> get copyWith =>
      __$$LeagueSelectedImplCopyWithImpl<_$LeagueSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(
            LeagueName name, UniqueId id, List<MemberId> members)
        leagueSelected,
    required TResult Function() createLeaguePressed,
    required TResult Function() updateLeaguePressed,
    required TResult Function() deleteLeagueTriggered,
  }) {
    return leagueSelected(name, id, members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult? Function()? createLeaguePressed,
    TResult? Function()? updateLeaguePressed,
    TResult? Function()? deleteLeagueTriggered,
  }) {
    return leagueSelected?.call(name, id, members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult Function()? createLeaguePressed,
    TResult Function()? updateLeaguePressed,
    TResult Function()? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (leagueSelected != null) {
      return leagueSelected(name, id, members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(LeagueSelected value) leagueSelected,
    required TResult Function(CreateLeaguePressed value) createLeaguePressed,
    required TResult Function(UpdateLeaguePressed value) updateLeaguePressed,
    required TResult Function(DeleteLeagueTriggered value)
        deleteLeagueTriggered,
  }) {
    return leagueSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(LeagueSelected value)? leagueSelected,
    TResult? Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult? Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult? Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
  }) {
    return leagueSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(LeagueSelected value)? leagueSelected,
    TResult Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (leagueSelected != null) {
      return leagueSelected(this);
    }
    return orElse();
  }
}

abstract class LeagueSelected implements LeagueManagerEvent {
  const factory LeagueSelected(final LeagueName name, final UniqueId id,
      final List<MemberId> members) = _$LeagueSelectedImpl;

  LeagueName get name;
  UniqueId get id;
  List<MemberId> get members;
  @JsonKey(ignore: true)
  _$$LeagueSelectedImplCopyWith<_$LeagueSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateLeaguePressedImplCopyWith<$Res> {
  factory _$$CreateLeaguePressedImplCopyWith(_$CreateLeaguePressedImpl value,
          $Res Function(_$CreateLeaguePressedImpl) then) =
      __$$CreateLeaguePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateLeaguePressedImplCopyWithImpl<$Res>
    extends _$LeagueManagerEventCopyWithImpl<$Res, _$CreateLeaguePressedImpl>
    implements _$$CreateLeaguePressedImplCopyWith<$Res> {
  __$$CreateLeaguePressedImplCopyWithImpl(_$CreateLeaguePressedImpl _value,
      $Res Function(_$CreateLeaguePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateLeaguePressedImpl implements CreateLeaguePressed {
  const _$CreateLeaguePressedImpl();

  @override
  String toString() {
    return 'LeagueManagerEvent.createLeaguePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLeaguePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(
            LeagueName name, UniqueId id, List<MemberId> members)
        leagueSelected,
    required TResult Function() createLeaguePressed,
    required TResult Function() updateLeaguePressed,
    required TResult Function() deleteLeagueTriggered,
  }) {
    return createLeaguePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult? Function()? createLeaguePressed,
    TResult? Function()? updateLeaguePressed,
    TResult? Function()? deleteLeagueTriggered,
  }) {
    return createLeaguePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult Function()? createLeaguePressed,
    TResult Function()? updateLeaguePressed,
    TResult Function()? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (createLeaguePressed != null) {
      return createLeaguePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(LeagueSelected value) leagueSelected,
    required TResult Function(CreateLeaguePressed value) createLeaguePressed,
    required TResult Function(UpdateLeaguePressed value) updateLeaguePressed,
    required TResult Function(DeleteLeagueTriggered value)
        deleteLeagueTriggered,
  }) {
    return createLeaguePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(LeagueSelected value)? leagueSelected,
    TResult? Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult? Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult? Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
  }) {
    return createLeaguePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(LeagueSelected value)? leagueSelected,
    TResult Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (createLeaguePressed != null) {
      return createLeaguePressed(this);
    }
    return orElse();
  }
}

abstract class CreateLeaguePressed implements LeagueManagerEvent {
  const factory CreateLeaguePressed() = _$CreateLeaguePressedImpl;
}

/// @nodoc
abstract class _$$UpdateLeaguePressedImplCopyWith<$Res> {
  factory _$$UpdateLeaguePressedImplCopyWith(_$UpdateLeaguePressedImpl value,
          $Res Function(_$UpdateLeaguePressedImpl) then) =
      __$$UpdateLeaguePressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateLeaguePressedImplCopyWithImpl<$Res>
    extends _$LeagueManagerEventCopyWithImpl<$Res, _$UpdateLeaguePressedImpl>
    implements _$$UpdateLeaguePressedImplCopyWith<$Res> {
  __$$UpdateLeaguePressedImplCopyWithImpl(_$UpdateLeaguePressedImpl _value,
      $Res Function(_$UpdateLeaguePressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateLeaguePressedImpl implements UpdateLeaguePressed {
  const _$UpdateLeaguePressedImpl();

  @override
  String toString() {
    return 'LeagueManagerEvent.updateLeaguePressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLeaguePressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(
            LeagueName name, UniqueId id, List<MemberId> members)
        leagueSelected,
    required TResult Function() createLeaguePressed,
    required TResult Function() updateLeaguePressed,
    required TResult Function() deleteLeagueTriggered,
  }) {
    return updateLeaguePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult? Function()? createLeaguePressed,
    TResult? Function()? updateLeaguePressed,
    TResult? Function()? deleteLeagueTriggered,
  }) {
    return updateLeaguePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult Function()? createLeaguePressed,
    TResult Function()? updateLeaguePressed,
    TResult Function()? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (updateLeaguePressed != null) {
      return updateLeaguePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(LeagueSelected value) leagueSelected,
    required TResult Function(CreateLeaguePressed value) createLeaguePressed,
    required TResult Function(UpdateLeaguePressed value) updateLeaguePressed,
    required TResult Function(DeleteLeagueTriggered value)
        deleteLeagueTriggered,
  }) {
    return updateLeaguePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(LeagueSelected value)? leagueSelected,
    TResult? Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult? Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult? Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
  }) {
    return updateLeaguePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(LeagueSelected value)? leagueSelected,
    TResult Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (updateLeaguePressed != null) {
      return updateLeaguePressed(this);
    }
    return orElse();
  }
}

abstract class UpdateLeaguePressed implements LeagueManagerEvent {
  const factory UpdateLeaguePressed() = _$UpdateLeaguePressedImpl;
}

/// @nodoc
abstract class _$$DeleteLeagueTriggeredImplCopyWith<$Res> {
  factory _$$DeleteLeagueTriggeredImplCopyWith(
          _$DeleteLeagueTriggeredImpl value,
          $Res Function(_$DeleteLeagueTriggeredImpl) then) =
      __$$DeleteLeagueTriggeredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteLeagueTriggeredImplCopyWithImpl<$Res>
    extends _$LeagueManagerEventCopyWithImpl<$Res, _$DeleteLeagueTriggeredImpl>
    implements _$$DeleteLeagueTriggeredImplCopyWith<$Res> {
  __$$DeleteLeagueTriggeredImplCopyWithImpl(_$DeleteLeagueTriggeredImpl _value,
      $Res Function(_$DeleteLeagueTriggeredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteLeagueTriggeredImpl implements DeleteLeagueTriggered {
  const _$DeleteLeagueTriggeredImpl();

  @override
  String toString() {
    return 'LeagueManagerEvent.deleteLeagueTriggered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLeagueTriggeredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(
            LeagueName name, UniqueId id, List<MemberId> members)
        leagueSelected,
    required TResult Function() createLeaguePressed,
    required TResult Function() updateLeaguePressed,
    required TResult Function() deleteLeagueTriggered,
  }) {
    return deleteLeagueTriggered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult? Function()? createLeaguePressed,
    TResult? Function()? updateLeaguePressed,
    TResult? Function()? deleteLeagueTriggered,
  }) {
    return deleteLeagueTriggered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(LeagueName name, UniqueId id, List<MemberId> members)?
        leagueSelected,
    TResult Function()? createLeaguePressed,
    TResult Function()? updateLeaguePressed,
    TResult Function()? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (deleteLeagueTriggered != null) {
      return deleteLeagueTriggered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(LeagueSelected value) leagueSelected,
    required TResult Function(CreateLeaguePressed value) createLeaguePressed,
    required TResult Function(UpdateLeaguePressed value) updateLeaguePressed,
    required TResult Function(DeleteLeagueTriggered value)
        deleteLeagueTriggered,
  }) {
    return deleteLeagueTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(LeagueSelected value)? leagueSelected,
    TResult? Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult? Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult? Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
  }) {
    return deleteLeagueTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(LeagueSelected value)? leagueSelected,
    TResult Function(CreateLeaguePressed value)? createLeaguePressed,
    TResult Function(UpdateLeaguePressed value)? updateLeaguePressed,
    TResult Function(DeleteLeagueTriggered value)? deleteLeagueTriggered,
    required TResult orElse(),
  }) {
    if (deleteLeagueTriggered != null) {
      return deleteLeagueTriggered(this);
    }
    return orElse();
  }
}

abstract class DeleteLeagueTriggered implements LeagueManagerEvent {
  const factory DeleteLeagueTriggered() = _$DeleteLeagueTriggeredImpl;
}

/// @nodoc
mixin _$LeagueManagerState {
  LeagueName get leagueName => throw _privateConstructorUsedError;
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  List<MemberId> get members => throw _privateConstructorUsedError;
  Option<Either<LeagueFailure, Unit>> get operationFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeagueManagerStateCopyWith<LeagueManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueManagerStateCopyWith<$Res> {
  factory $LeagueManagerStateCopyWith(
          LeagueManagerState value, $Res Function(LeagueManagerState) then) =
      _$LeagueManagerStateCopyWithImpl<$Res, LeagueManagerState>;
  @useResult
  $Res call(
      {LeagueName leagueName,
      UniqueId uniqueId,
      List<MemberId> members,
      Option<Either<LeagueFailure, Unit>> operationFailureOrSuccess,
      bool showErrorMessages});
}

/// @nodoc
class _$LeagueManagerStateCopyWithImpl<$Res, $Val extends LeagueManagerState>
    implements $LeagueManagerStateCopyWith<$Res> {
  _$LeagueManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagueName = null,
    Object? uniqueId = null,
    Object? members = null,
    Object? operationFailureOrSuccess = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      leagueName: null == leagueName
          ? _value.leagueName
          : leagueName // ignore: cast_nullable_to_non_nullable
              as LeagueName,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberId>,
      operationFailureOrSuccess: null == operationFailureOrSuccess
          ? _value.operationFailureOrSuccess
          : operationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LeagueFailure, Unit>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeagueManagerStateImplCopyWith<$Res>
    implements $LeagueManagerStateCopyWith<$Res> {
  factory _$$LeagueManagerStateImplCopyWith(_$LeagueManagerStateImpl value,
          $Res Function(_$LeagueManagerStateImpl) then) =
      __$$LeagueManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LeagueName leagueName,
      UniqueId uniqueId,
      List<MemberId> members,
      Option<Either<LeagueFailure, Unit>> operationFailureOrSuccess,
      bool showErrorMessages});
}

/// @nodoc
class __$$LeagueManagerStateImplCopyWithImpl<$Res>
    extends _$LeagueManagerStateCopyWithImpl<$Res, _$LeagueManagerStateImpl>
    implements _$$LeagueManagerStateImplCopyWith<$Res> {
  __$$LeagueManagerStateImplCopyWithImpl(_$LeagueManagerStateImpl _value,
      $Res Function(_$LeagueManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagueName = null,
    Object? uniqueId = null,
    Object? members = null,
    Object? operationFailureOrSuccess = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_$LeagueManagerStateImpl(
      leagueName: null == leagueName
          ? _value.leagueName
          : leagueName // ignore: cast_nullable_to_non_nullable
              as LeagueName,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<MemberId>,
      operationFailureOrSuccess: null == operationFailureOrSuccess
          ? _value.operationFailureOrSuccess
          : operationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LeagueFailure, Unit>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LeagueManagerStateImpl implements _LeagueManagerState {
  const _$LeagueManagerStateImpl(
      {required this.leagueName,
      required this.uniqueId,
      required final List<MemberId> members,
      required this.operationFailureOrSuccess,
      required this.showErrorMessages})
      : _members = members;

  @override
  final LeagueName leagueName;
  @override
  final UniqueId uniqueId;
  final List<MemberId> _members;
  @override
  List<MemberId> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final Option<Either<LeagueFailure, Unit>> operationFailureOrSuccess;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'LeagueManagerState(leagueName: $leagueName, uniqueId: $uniqueId, members: $members, operationFailureOrSuccess: $operationFailureOrSuccess, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeagueManagerStateImpl &&
            (identical(other.leagueName, leagueName) ||
                other.leagueName == leagueName) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.operationFailureOrSuccess,
                    operationFailureOrSuccess) ||
                other.operationFailureOrSuccess == operationFailureOrSuccess) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      leagueName,
      uniqueId,
      const DeepCollectionEquality().hash(_members),
      operationFailureOrSuccess,
      showErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeagueManagerStateImplCopyWith<_$LeagueManagerStateImpl> get copyWith =>
      __$$LeagueManagerStateImplCopyWithImpl<_$LeagueManagerStateImpl>(
          this, _$identity);
}

abstract class _LeagueManagerState implements LeagueManagerState {
  const factory _LeagueManagerState(
      {required final LeagueName leagueName,
      required final UniqueId uniqueId,
      required final List<MemberId> members,
      required final Option<Either<LeagueFailure, Unit>>
          operationFailureOrSuccess,
      required final bool showErrorMessages}) = _$LeagueManagerStateImpl;

  @override
  LeagueName get leagueName;
  @override
  UniqueId get uniqueId;
  @override
  List<MemberId> get members;
  @override
  Option<Either<LeagueFailure, Unit>> get operationFailureOrSuccess;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$LeagueManagerStateImplCopyWith<_$LeagueManagerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
