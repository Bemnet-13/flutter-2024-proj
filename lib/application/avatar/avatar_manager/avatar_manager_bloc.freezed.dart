// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AvatarManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarManagerEventCopyWith<$Res> {
  factory $AvatarManagerEventCopyWith(
          AvatarManagerEvent value, $Res Function(AvatarManagerEvent) then) =
      _$AvatarManagerEventCopyWithImpl<$Res, AvatarManagerEvent>;
}

/// @nodoc
class _$AvatarManagerEventCopyWithImpl<$Res, $Val extends AvatarManagerEvent>
    implements $AvatarManagerEventCopyWith<$Res> {
  _$AvatarManagerEventCopyWithImpl(this._value, this._then);

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
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$NameChangedImpl>
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
    return 'AvatarManagerEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
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
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements AvatarManagerEvent {
  const factory NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClubChangedImplCopyWith<$Res> {
  factory _$$ClubChangedImplCopyWith(
          _$ClubChangedImpl value, $Res Function(_$ClubChangedImpl) then) =
      __$$ClubChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clubStr});
}

/// @nodoc
class __$$ClubChangedImplCopyWithImpl<$Res>
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$ClubChangedImpl>
    implements _$$ClubChangedImplCopyWith<$Res> {
  __$$ClubChangedImplCopyWithImpl(
      _$ClubChangedImpl _value, $Res Function(_$ClubChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubStr = null,
  }) {
    return _then(_$ClubChangedImpl(
      null == clubStr
          ? _value.clubStr
          : clubStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClubChangedImpl implements ClubChanged {
  const _$ClubChangedImpl(this.clubStr);

  @override
  final String clubStr;

  @override
  String toString() {
    return 'AvatarManagerEvent.clubChanged(clubStr: $clubStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubChangedImpl &&
            (identical(other.clubStr, clubStr) || other.clubStr == clubStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubChangedImplCopyWith<_$ClubChangedImpl> get copyWith =>
      __$$ClubChangedImplCopyWithImpl<_$ClubChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return clubChanged(clubStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return clubChanged?.call(clubStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (clubChanged != null) {
      return clubChanged(clubStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return clubChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return clubChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (clubChanged != null) {
      return clubChanged(this);
    }
    return orElse();
  }
}

abstract class ClubChanged implements AvatarManagerEvent {
  const factory ClubChanged(final String clubStr) = _$ClubChangedImpl;

  String get clubStr;
  @JsonKey(ignore: true)
  _$$ClubChangedImplCopyWith<_$ClubChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScoreChangedImplCopyWith<$Res> {
  factory _$$ScoreChangedImplCopyWith(
          _$ScoreChangedImpl value, $Res Function(_$ScoreChangedImpl) then) =
      __$$ScoreChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int scoreVal});
}

/// @nodoc
class __$$ScoreChangedImplCopyWithImpl<$Res>
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$ScoreChangedImpl>
    implements _$$ScoreChangedImplCopyWith<$Res> {
  __$$ScoreChangedImplCopyWithImpl(
      _$ScoreChangedImpl _value, $Res Function(_$ScoreChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scoreVal = null,
  }) {
    return _then(_$ScoreChangedImpl(
      null == scoreVal
          ? _value.scoreVal
          : scoreVal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScoreChangedImpl implements ScoreChanged {
  const _$ScoreChangedImpl(this.scoreVal);

  @override
  final int scoreVal;

  @override
  String toString() {
    return 'AvatarManagerEvent.scoreChanged(scoreVal: $scoreVal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreChangedImpl &&
            (identical(other.scoreVal, scoreVal) ||
                other.scoreVal == scoreVal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scoreVal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreChangedImplCopyWith<_$ScoreChangedImpl> get copyWith =>
      __$$ScoreChangedImplCopyWithImpl<_$ScoreChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return scoreChanged(scoreVal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return scoreChanged?.call(scoreVal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (scoreChanged != null) {
      return scoreChanged(scoreVal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return scoreChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return scoreChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (scoreChanged != null) {
      return scoreChanged(this);
    }
    return orElse();
  }
}

abstract class ScoreChanged implements AvatarManagerEvent {
  const factory ScoreChanged(final int scoreVal) = _$ScoreChangedImpl;

  int get scoreVal;
  @JsonKey(ignore: true)
  _$$ScoreChangedImplCopyWith<_$ScoreChangedImpl> get copyWith =>
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
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$IdSetImpl>
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
    return 'AvatarManagerEvent.idSet(id: $id)';
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
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return idSet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return idSet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
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
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return idSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return idSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (idSet != null) {
      return idSet(this);
    }
    return orElse();
  }
}

abstract class IdSet implements AvatarManagerEvent {
  const factory IdSet(final UniqueId id) = _$IdSetImpl;

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$IdSetImplCopyWith<_$IdSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvatarSelectedImplCopyWith<$Res> {
  factory _$$AvatarSelectedImplCopyWith(_$AvatarSelectedImpl value,
          $Res Function(_$AvatarSelectedImpl) then) =
      __$$AvatarSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AvatarName name, UniqueId id, AvatarScore score, AvatarClub avatarClub});
}

/// @nodoc
class __$$AvatarSelectedImplCopyWithImpl<$Res>
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$AvatarSelectedImpl>
    implements _$$AvatarSelectedImplCopyWith<$Res> {
  __$$AvatarSelectedImplCopyWithImpl(
      _$AvatarSelectedImpl _value, $Res Function(_$AvatarSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? score = null,
    Object? avatarClub = null,
  }) {
    return _then(_$AvatarSelectedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as AvatarName,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as AvatarScore,
      null == avatarClub
          ? _value.avatarClub
          : avatarClub // ignore: cast_nullable_to_non_nullable
              as AvatarClub,
    ));
  }
}

/// @nodoc

class _$AvatarSelectedImpl implements AvatarSelected {
  const _$AvatarSelectedImpl(this.name, this.id, this.score, this.avatarClub);

  @override
  final AvatarName name;
  @override
  final UniqueId id;
  @override
  final AvatarScore score;
  @override
  final AvatarClub avatarClub;

  @override
  String toString() {
    return 'AvatarManagerEvent.avatarSelected(name: $name, id: $id, score: $score, avatarClub: $avatarClub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarSelectedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.avatarClub, avatarClub) ||
                other.avatarClub == avatarClub));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id, score, avatarClub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarSelectedImplCopyWith<_$AvatarSelectedImpl> get copyWith =>
      __$$AvatarSelectedImplCopyWithImpl<_$AvatarSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return avatarSelected(name, id, score, avatarClub);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return avatarSelected?.call(name, id, score, avatarClub);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (avatarSelected != null) {
      return avatarSelected(name, id, score, avatarClub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return avatarSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return avatarSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (avatarSelected != null) {
      return avatarSelected(this);
    }
    return orElse();
  }
}

abstract class AvatarSelected implements AvatarManagerEvent {
  const factory AvatarSelected(
      final AvatarName name,
      final UniqueId id,
      final AvatarScore score,
      final AvatarClub avatarClub) = _$AvatarSelectedImpl;

  AvatarName get name;
  UniqueId get id;
  AvatarScore get score;
  AvatarClub get avatarClub;
  @JsonKey(ignore: true)
  _$$AvatarSelectedImplCopyWith<_$AvatarSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateAvatarPressedImplCopyWith<$Res> {
  factory _$$CreateAvatarPressedImplCopyWith(_$CreateAvatarPressedImpl value,
          $Res Function(_$CreateAvatarPressedImpl) then) =
      __$$CreateAvatarPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAvatarPressedImplCopyWithImpl<$Res>
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$CreateAvatarPressedImpl>
    implements _$$CreateAvatarPressedImplCopyWith<$Res> {
  __$$CreateAvatarPressedImplCopyWithImpl(_$CreateAvatarPressedImpl _value,
      $Res Function(_$CreateAvatarPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateAvatarPressedImpl implements CreateAvatarPressed {
  const _$CreateAvatarPressedImpl();

  @override
  String toString() {
    return 'AvatarManagerEvent.createAvatarPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAvatarPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return createAvatarPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return createAvatarPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (createAvatarPressed != null) {
      return createAvatarPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return createAvatarPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return createAvatarPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (createAvatarPressed != null) {
      return createAvatarPressed(this);
    }
    return orElse();
  }
}

abstract class CreateAvatarPressed implements AvatarManagerEvent {
  const factory CreateAvatarPressed() = _$CreateAvatarPressedImpl;
}

/// @nodoc
abstract class _$$UpdateAvatarPressedImplCopyWith<$Res> {
  factory _$$UpdateAvatarPressedImplCopyWith(_$UpdateAvatarPressedImpl value,
          $Res Function(_$UpdateAvatarPressedImpl) then) =
      __$$UpdateAvatarPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateAvatarPressedImplCopyWithImpl<$Res>
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$UpdateAvatarPressedImpl>
    implements _$$UpdateAvatarPressedImplCopyWith<$Res> {
  __$$UpdateAvatarPressedImplCopyWithImpl(_$UpdateAvatarPressedImpl _value,
      $Res Function(_$UpdateAvatarPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateAvatarPressedImpl implements UpdateAvatarPressed {
  const _$UpdateAvatarPressedImpl();

  @override
  String toString() {
    return 'AvatarManagerEvent.updateAvatarPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAvatarPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return updateAvatarPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return updateAvatarPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (updateAvatarPressed != null) {
      return updateAvatarPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return updateAvatarPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return updateAvatarPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (updateAvatarPressed != null) {
      return updateAvatarPressed(this);
    }
    return orElse();
  }
}

abstract class UpdateAvatarPressed implements AvatarManagerEvent {
  const factory UpdateAvatarPressed() = _$UpdateAvatarPressedImpl;
}

/// @nodoc
abstract class _$$DeleteAvatarTriggeredImplCopyWith<$Res> {
  factory _$$DeleteAvatarTriggeredImplCopyWith(
          _$DeleteAvatarTriggeredImpl value,
          $Res Function(_$DeleteAvatarTriggeredImpl) then) =
      __$$DeleteAvatarTriggeredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAvatarTriggeredImplCopyWithImpl<$Res>
    extends _$AvatarManagerEventCopyWithImpl<$Res, _$DeleteAvatarTriggeredImpl>
    implements _$$DeleteAvatarTriggeredImplCopyWith<$Res> {
  __$$DeleteAvatarTriggeredImplCopyWithImpl(_$DeleteAvatarTriggeredImpl _value,
      $Res Function(_$DeleteAvatarTriggeredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAvatarTriggeredImpl implements DeleteAvatarTriggered {
  const _$DeleteAvatarTriggeredImpl();

  @override
  String toString() {
    return 'AvatarManagerEvent.deleteAvatarTriggered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAvatarTriggeredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int scoreVal) scoreChanged,
    required TResult Function(UniqueId id) idSet,
    required TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)
        avatarSelected,
    required TResult Function() createAvatarPressed,
    required TResult Function() updateAvatarPressed,
    required TResult Function() deleteAvatarTriggered,
  }) {
    return deleteAvatarTriggered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int scoreVal)? scoreChanged,
    TResult? Function(UniqueId id)? idSet,
    TResult? Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult? Function()? createAvatarPressed,
    TResult? Function()? updateAvatarPressed,
    TResult? Function()? deleteAvatarTriggered,
  }) {
    return deleteAvatarTriggered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int scoreVal)? scoreChanged,
    TResult Function(UniqueId id)? idSet,
    TResult Function(AvatarName name, UniqueId id, AvatarScore score,
            AvatarClub avatarClub)?
        avatarSelected,
    TResult Function()? createAvatarPressed,
    TResult Function()? updateAvatarPressed,
    TResult Function()? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (deleteAvatarTriggered != null) {
      return deleteAvatarTriggered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ClubChanged value) clubChanged,
    required TResult Function(ScoreChanged value) scoreChanged,
    required TResult Function(IdSet value) idSet,
    required TResult Function(AvatarSelected value) avatarSelected,
    required TResult Function(CreateAvatarPressed value) createAvatarPressed,
    required TResult Function(UpdateAvatarPressed value) updateAvatarPressed,
    required TResult Function(DeleteAvatarTriggered value)
        deleteAvatarTriggered,
  }) {
    return deleteAvatarTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ClubChanged value)? clubChanged,
    TResult? Function(ScoreChanged value)? scoreChanged,
    TResult? Function(IdSet value)? idSet,
    TResult? Function(AvatarSelected value)? avatarSelected,
    TResult? Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult? Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult? Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
  }) {
    return deleteAvatarTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ClubChanged value)? clubChanged,
    TResult Function(ScoreChanged value)? scoreChanged,
    TResult Function(IdSet value)? idSet,
    TResult Function(AvatarSelected value)? avatarSelected,
    TResult Function(CreateAvatarPressed value)? createAvatarPressed,
    TResult Function(UpdateAvatarPressed value)? updateAvatarPressed,
    TResult Function(DeleteAvatarTriggered value)? deleteAvatarTriggered,
    required TResult orElse(),
  }) {
    if (deleteAvatarTriggered != null) {
      return deleteAvatarTriggered(this);
    }
    return orElse();
  }
}

abstract class DeleteAvatarTriggered implements AvatarManagerEvent {
  const factory DeleteAvatarTriggered() = _$DeleteAvatarTriggeredImpl;
}

/// @nodoc
mixin _$AvatarManagerState {
  AvatarName get avatarName => throw _privateConstructorUsedError;
  UniqueId get uniqueId => throw _privateConstructorUsedError;
  AvatarScore get avatarScore => throw _privateConstructorUsedError;
  AvatarClub get avatarClub => throw _privateConstructorUsedError;
  Option<Either<AvatarFailure, Unit>> get operationFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvatarManagerStateCopyWith<AvatarManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarManagerStateCopyWith<$Res> {
  factory $AvatarManagerStateCopyWith(
          AvatarManagerState value, $Res Function(AvatarManagerState) then) =
      _$AvatarManagerStateCopyWithImpl<$Res, AvatarManagerState>;
  @useResult
  $Res call(
      {AvatarName avatarName,
      UniqueId uniqueId,
      AvatarScore avatarScore,
      AvatarClub avatarClub,
      Option<Either<AvatarFailure, Unit>> operationFailureOrSuccess,
      bool showErrorMessages});
}

/// @nodoc
class _$AvatarManagerStateCopyWithImpl<$Res, $Val extends AvatarManagerState>
    implements $AvatarManagerStateCopyWith<$Res> {
  _$AvatarManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarName = null,
    Object? uniqueId = null,
    Object? avatarScore = null,
    Object? avatarClub = null,
    Object? operationFailureOrSuccess = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as AvatarName,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      avatarScore: null == avatarScore
          ? _value.avatarScore
          : avatarScore // ignore: cast_nullable_to_non_nullable
              as AvatarScore,
      avatarClub: null == avatarClub
          ? _value.avatarClub
          : avatarClub // ignore: cast_nullable_to_non_nullable
              as AvatarClub,
      operationFailureOrSuccess: null == operationFailureOrSuccess
          ? _value.operationFailureOrSuccess
          : operationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarManagerStateImplCopyWith<$Res>
    implements $AvatarManagerStateCopyWith<$Res> {
  factory _$$AvatarManagerStateImplCopyWith(_$AvatarManagerStateImpl value,
          $Res Function(_$AvatarManagerStateImpl) then) =
      __$$AvatarManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AvatarName avatarName,
      UniqueId uniqueId,
      AvatarScore avatarScore,
      AvatarClub avatarClub,
      Option<Either<AvatarFailure, Unit>> operationFailureOrSuccess,
      bool showErrorMessages});
}

/// @nodoc
class __$$AvatarManagerStateImplCopyWithImpl<$Res>
    extends _$AvatarManagerStateCopyWithImpl<$Res, _$AvatarManagerStateImpl>
    implements _$$AvatarManagerStateImplCopyWith<$Res> {
  __$$AvatarManagerStateImplCopyWithImpl(_$AvatarManagerStateImpl _value,
      $Res Function(_$AvatarManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarName = null,
    Object? uniqueId = null,
    Object? avatarScore = null,
    Object? avatarClub = null,
    Object? operationFailureOrSuccess = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_$AvatarManagerStateImpl(
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as AvatarName,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      avatarScore: null == avatarScore
          ? _value.avatarScore
          : avatarScore // ignore: cast_nullable_to_non_nullable
              as AvatarScore,
      avatarClub: null == avatarClub
          ? _value.avatarClub
          : avatarClub // ignore: cast_nullable_to_non_nullable
              as AvatarClub,
      operationFailureOrSuccess: null == operationFailureOrSuccess
          ? _value.operationFailureOrSuccess
          : operationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AvatarManagerStateImpl implements _AvatarManagerState {
  const _$AvatarManagerStateImpl(
      {required this.avatarName,
      required this.uniqueId,
      required this.avatarScore,
      required this.avatarClub,
      required this.operationFailureOrSuccess,
      required this.showErrorMessages});

  @override
  final AvatarName avatarName;
  @override
  final UniqueId uniqueId;
  @override
  final AvatarScore avatarScore;
  @override
  final AvatarClub avatarClub;
  @override
  final Option<Either<AvatarFailure, Unit>> operationFailureOrSuccess;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'AvatarManagerState(avatarName: $avatarName, uniqueId: $uniqueId, avatarScore: $avatarScore, avatarClub: $avatarClub, operationFailureOrSuccess: $operationFailureOrSuccess, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarManagerStateImpl &&
            (identical(other.avatarName, avatarName) ||
                other.avatarName == avatarName) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.avatarScore, avatarScore) ||
                other.avatarScore == avatarScore) &&
            (identical(other.avatarClub, avatarClub) ||
                other.avatarClub == avatarClub) &&
            (identical(other.operationFailureOrSuccess,
                    operationFailureOrSuccess) ||
                other.operationFailureOrSuccess == operationFailureOrSuccess) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatarName, uniqueId,
      avatarScore, avatarClub, operationFailureOrSuccess, showErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarManagerStateImplCopyWith<_$AvatarManagerStateImpl> get copyWith =>
      __$$AvatarManagerStateImplCopyWithImpl<_$AvatarManagerStateImpl>(
          this, _$identity);
}

abstract class _AvatarManagerState implements AvatarManagerState {
  const factory _AvatarManagerState(
      {required final AvatarName avatarName,
      required final UniqueId uniqueId,
      required final AvatarScore avatarScore,
      required final AvatarClub avatarClub,
      required final Option<Either<AvatarFailure, Unit>>
          operationFailureOrSuccess,
      required final bool showErrorMessages}) = _$AvatarManagerStateImpl;

  @override
  AvatarName get avatarName;
  @override
  UniqueId get uniqueId;
  @override
  AvatarScore get avatarScore;
  @override
  AvatarClub get avatarClub;
  @override
  Option<Either<AvatarFailure, Unit>> get operationFailureOrSuccess;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$AvatarManagerStateImplCopyWith<_$AvatarManagerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
