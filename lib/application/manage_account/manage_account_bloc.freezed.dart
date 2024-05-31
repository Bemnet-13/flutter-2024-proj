// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManageAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageAccountEventCopyWith<$Res> {
  factory $ManageAccountEventCopyWith(
          ManageAccountEvent value, $Res Function(ManageAccountEvent) then) =
      _$ManageAccountEventCopyWithImpl<$Res, ManageAccountEvent>;
}

/// @nodoc
class _$ManageAccountEventCopyWithImpl<$Res, $Val extends ManageAccountEvent>
    implements $ManageAccountEventCopyWith<$Res> {
  _$ManageAccountEventCopyWithImpl(this._value, this._then);

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
    extends _$ManageAccountEventCopyWithImpl<$Res, _$NameChangedImpl>
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
    return 'ManageAccountEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
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
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ManageAccountEvent {
  const factory NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TeamNameChangedImplCopyWith<$Res> {
  factory _$$TeamNameChangedImplCopyWith(_$TeamNameChangedImpl value,
          $Res Function(_$TeamNameChangedImpl) then) =
      __$$TeamNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String teamNameStr});
}

/// @nodoc
class __$$TeamNameChangedImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res, _$TeamNameChangedImpl>
    implements _$$TeamNameChangedImplCopyWith<$Res> {
  __$$TeamNameChangedImplCopyWithImpl(
      _$TeamNameChangedImpl _value, $Res Function(_$TeamNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamNameStr = null,
  }) {
    return _then(_$TeamNameChangedImpl(
      null == teamNameStr
          ? _value.teamNameStr
          : teamNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TeamNameChangedImpl implements TeamNameChanged {
  const _$TeamNameChangedImpl(this.teamNameStr);

  @override
  final String teamNameStr;

  @override
  String toString() {
    return 'ManageAccountEvent.teamNameChanged(teamNameStr: $teamNameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamNameChangedImpl &&
            (identical(other.teamNameStr, teamNameStr) ||
                other.teamNameStr == teamNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamNameChangedImplCopyWith<_$TeamNameChangedImpl> get copyWith =>
      __$$TeamNameChangedImplCopyWithImpl<_$TeamNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return teamNameChanged(teamNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return teamNameChanged?.call(teamNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (teamNameChanged != null) {
      return teamNameChanged(teamNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return teamNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return teamNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (teamNameChanged != null) {
      return teamNameChanged(this);
    }
    return orElse();
  }
}

abstract class TeamNameChanged implements ManageAccountEvent {
  const factory TeamNameChanged(final String teamNameStr) =
      _$TeamNameChangedImpl;

  String get teamNameStr;
  @JsonKey(ignore: true)
  _$$TeamNameChangedImplCopyWith<_$TeamNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ManageAccountEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ManageAccountEvent {
  const factory EmailChanged(final String emailStr) = _$EmailChangedImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ManageAccountEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements ManageAccountEvent {
  const factory PasswordChanged(final String passwordStr) =
      _$PasswordChangedImpl;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserIdSetImplCopyWith<$Res> {
  factory _$$UserIdSetImplCopyWith(
          _$UserIdSetImpl value, $Res Function(_$UserIdSetImpl) then) =
      __$$UserIdSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserIdSetImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res, _$UserIdSetImpl>
    implements _$$UserIdSetImplCopyWith<$Res> {
  __$$UserIdSetImplCopyWithImpl(
      _$UserIdSetImpl _value, $Res Function(_$UserIdSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserIdSetImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserIdSetImpl implements UserIdSet {
  const _$UserIdSetImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ManageAccountEvent.userIdSet(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdSetImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdSetImplCopyWith<_$UserIdSetImpl> get copyWith =>
      __$$UserIdSetImplCopyWithImpl<_$UserIdSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return userIdSet(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return userIdSet?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (userIdSet != null) {
      return userIdSet(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return userIdSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return userIdSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (userIdSet != null) {
      return userIdSet(this);
    }
    return orElse();
  }
}

abstract class UserIdSet implements ManageAccountEvent {
  const factory UserIdSet(final String userId) = _$UserIdSetImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$UserIdSetImplCopyWith<_$UserIdSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuspensionStateSetImplCopyWith<$Res> {
  factory _$$SuspensionStateSetImplCopyWith(_$SuspensionStateSetImpl value,
          $Res Function(_$SuspensionStateSetImpl) then) =
      __$$SuspensionStateSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool suspensionState});
}

/// @nodoc
class __$$SuspensionStateSetImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res, _$SuspensionStateSetImpl>
    implements _$$SuspensionStateSetImplCopyWith<$Res> {
  __$$SuspensionStateSetImplCopyWithImpl(_$SuspensionStateSetImpl _value,
      $Res Function(_$SuspensionStateSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suspensionState = null,
  }) {
    return _then(_$SuspensionStateSetImpl(
      null == suspensionState
          ? _value.suspensionState
          : suspensionState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuspensionStateSetImpl implements SuspensionStateSet {
  const _$SuspensionStateSetImpl(this.suspensionState);

  @override
  final bool suspensionState;

  @override
  String toString() {
    return 'ManageAccountEvent.suspensionStateSet(suspensionState: $suspensionState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuspensionStateSetImpl &&
            (identical(other.suspensionState, suspensionState) ||
                other.suspensionState == suspensionState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, suspensionState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuspensionStateSetImplCopyWith<_$SuspensionStateSetImpl> get copyWith =>
      __$$SuspensionStateSetImplCopyWithImpl<_$SuspensionStateSetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return suspensionStateSet(suspensionState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return suspensionStateSet?.call(suspensionState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (suspensionStateSet != null) {
      return suspensionStateSet(suspensionState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return suspensionStateSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return suspensionStateSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (suspensionStateSet != null) {
      return suspensionStateSet(this);
    }
    return orElse();
  }
}

abstract class SuspensionStateSet implements ManageAccountEvent {
  const factory SuspensionStateSet(final bool suspensionState) =
      _$SuspensionStateSetImpl;

  bool get suspensionState;
  @JsonKey(ignore: true)
  _$$SuspensionStateSetImplCopyWith<_$SuspensionStateSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserAccountPressedImplCopyWith<$Res> {
  factory _$$UpdateUserAccountPressedImplCopyWith(
          _$UpdateUserAccountPressedImpl value,
          $Res Function(_$UpdateUserAccountPressedImpl) then) =
      __$$UpdateUserAccountPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserAccountPressedImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res,
        _$UpdateUserAccountPressedImpl>
    implements _$$UpdateUserAccountPressedImplCopyWith<$Res> {
  __$$UpdateUserAccountPressedImplCopyWithImpl(
      _$UpdateUserAccountPressedImpl _value,
      $Res Function(_$UpdateUserAccountPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUserAccountPressedImpl implements UpdateUserAccountPressed {
  const _$UpdateUserAccountPressedImpl();

  @override
  String toString() {
    return 'ManageAccountEvent.updateUserAccountPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserAccountPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return updateUserAccountPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return updateUserAccountPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (updateUserAccountPressed != null) {
      return updateUserAccountPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return updateUserAccountPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return updateUserAccountPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (updateUserAccountPressed != null) {
      return updateUserAccountPressed(this);
    }
    return orElse();
  }
}

abstract class UpdateUserAccountPressed implements ManageAccountEvent {
  const factory UpdateUserAccountPressed() = _$UpdateUserAccountPressedImpl;
}

/// @nodoc
abstract class _$$DeleteUserAccountPressedImplCopyWith<$Res> {
  factory _$$DeleteUserAccountPressedImplCopyWith(
          _$DeleteUserAccountPressedImpl value,
          $Res Function(_$DeleteUserAccountPressedImpl) then) =
      __$$DeleteUserAccountPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$DeleteUserAccountPressedImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res,
        _$DeleteUserAccountPressedImpl>
    implements _$$DeleteUserAccountPressedImplCopyWith<$Res> {
  __$$DeleteUserAccountPressedImplCopyWithImpl(
      _$DeleteUserAccountPressedImpl _value,
      $Res Function(_$DeleteUserAccountPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$DeleteUserAccountPressedImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteUserAccountPressedImpl implements DeleteUserAccountPressed {
  const _$DeleteUserAccountPressedImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ManageAccountEvent.deleteUserAccountPressed(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserAccountPressedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserAccountPressedImplCopyWith<_$DeleteUserAccountPressedImpl>
      get copyWith => __$$DeleteUserAccountPressedImplCopyWithImpl<
          _$DeleteUserAccountPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return deleteUserAccountPressed(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return deleteUserAccountPressed?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (deleteUserAccountPressed != null) {
      return deleteUserAccountPressed(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return deleteUserAccountPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return deleteUserAccountPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (deleteUserAccountPressed != null) {
      return deleteUserAccountPressed(this);
    }
    return orElse();
  }
}

abstract class DeleteUserAccountPressed implements ManageAccountEvent {
  const factory DeleteUserAccountPressed(final String userId) =
      _$DeleteUserAccountPressedImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$DeleteUserAccountPressedImplCopyWith<_$DeleteUserAccountPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuspendUserAccountPressedImplCopyWith<$Res> {
  factory _$$SuspendUserAccountPressedImplCopyWith(
          _$SuspendUserAccountPressedImpl value,
          $Res Function(_$SuspendUserAccountPressedImpl) then) =
      __$$SuspendUserAccountPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$SuspendUserAccountPressedImplCopyWithImpl<$Res>
    extends _$ManageAccountEventCopyWithImpl<$Res,
        _$SuspendUserAccountPressedImpl>
    implements _$$SuspendUserAccountPressedImplCopyWith<$Res> {
  __$$SuspendUserAccountPressedImplCopyWithImpl(
      _$SuspendUserAccountPressedImpl _value,
      $Res Function(_$SuspendUserAccountPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$SuspendUserAccountPressedImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuspendUserAccountPressedImpl implements SuspendUserAccountPressed {
  const _$SuspendUserAccountPressedImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ManageAccountEvent.suspendUserAccountPressed(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuspendUserAccountPressedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuspendUserAccountPressedImplCopyWith<_$SuspendUserAccountPressedImpl>
      get copyWith => __$$SuspendUserAccountPressedImplCopyWithImpl<
          _$SuspendUserAccountPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String teamNameStr) teamNameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String userId) userIdSet,
    required TResult Function(bool suspensionState) suspensionStateSet,
    required TResult Function() updateUserAccountPressed,
    required TResult Function(String userId) deleteUserAccountPressed,
    required TResult Function(String userId) suspendUserAccountPressed,
  }) {
    return suspendUserAccountPressed(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String teamNameStr)? teamNameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String userId)? userIdSet,
    TResult? Function(bool suspensionState)? suspensionStateSet,
    TResult? Function()? updateUserAccountPressed,
    TResult? Function(String userId)? deleteUserAccountPressed,
    TResult? Function(String userId)? suspendUserAccountPressed,
  }) {
    return suspendUserAccountPressed?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String teamNameStr)? teamNameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String userId)? userIdSet,
    TResult Function(bool suspensionState)? suspensionStateSet,
    TResult Function()? updateUserAccountPressed,
    TResult Function(String userId)? deleteUserAccountPressed,
    TResult Function(String userId)? suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (suspendUserAccountPressed != null) {
      return suspendUserAccountPressed(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TeamNameChanged value) teamNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UserIdSet value) userIdSet,
    required TResult Function(SuspensionStateSet value) suspensionStateSet,
    required TResult Function(UpdateUserAccountPressed value)
        updateUserAccountPressed,
    required TResult Function(DeleteUserAccountPressed value)
        deleteUserAccountPressed,
    required TResult Function(SuspendUserAccountPressed value)
        suspendUserAccountPressed,
  }) {
    return suspendUserAccountPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(TeamNameChanged value)? teamNameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(UserIdSet value)? userIdSet,
    TResult? Function(SuspensionStateSet value)? suspensionStateSet,
    TResult? Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult? Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult? Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
  }) {
    return suspendUserAccountPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TeamNameChanged value)? teamNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UserIdSet value)? userIdSet,
    TResult Function(SuspensionStateSet value)? suspensionStateSet,
    TResult Function(UpdateUserAccountPressed value)? updateUserAccountPressed,
    TResult Function(DeleteUserAccountPressed value)? deleteUserAccountPressed,
    TResult Function(SuspendUserAccountPressed value)?
        suspendUserAccountPressed,
    required TResult orElse(),
  }) {
    if (suspendUserAccountPressed != null) {
      return suspendUserAccountPressed(this);
    }
    return orElse();
  }
}

abstract class SuspendUserAccountPressed implements ManageAccountEvent {
  const factory SuspendUserAccountPressed(final String userId) =
      _$SuspendUserAccountPressedImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$SuspendUserAccountPressedImplCopyWith<_$SuspendUserAccountPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManageAccountState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  TeamName get teamName => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get suspensionState => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ManageAccountFailure, Unit>>
      get operationFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManageAccountStateCopyWith<ManageAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageAccountStateCopyWith<$Res> {
  factory $ManageAccountStateCopyWith(
          ManageAccountState value, $Res Function(ManageAccountState) then) =
      _$ManageAccountStateCopyWithImpl<$Res, ManageAccountState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Name name,
      TeamName teamName,
      String userId,
      bool showErrorMessages,
      bool suspensionState,
      bool isSubmitting,
      Option<Either<ManageAccountFailure, Unit>>
          operationFailureOrSuccessOption});
}

/// @nodoc
class _$ManageAccountStateCopyWithImpl<$Res, $Val extends ManageAccountState>
    implements $ManageAccountStateCopyWith<$Res> {
  _$ManageAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? name = null,
    Object? teamName = null,
    Object? userId = null,
    Object? showErrorMessages = null,
    Object? suspensionState = null,
    Object? isSubmitting = null,
    Object? operationFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as TeamName,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      suspensionState: null == suspensionState
          ? _value.suspensionState
          : suspensionState // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      operationFailureOrSuccessOption: null == operationFailureOrSuccessOption
          ? _value.operationFailureOrSuccessOption
          : operationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ManageAccountFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageAccountStateImplCopyWith<$Res>
    implements $ManageAccountStateCopyWith<$Res> {
  factory _$$ManageAccountStateImplCopyWith(_$ManageAccountStateImpl value,
          $Res Function(_$ManageAccountStateImpl) then) =
      __$$ManageAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Name name,
      TeamName teamName,
      String userId,
      bool showErrorMessages,
      bool suspensionState,
      bool isSubmitting,
      Option<Either<ManageAccountFailure, Unit>>
          operationFailureOrSuccessOption});
}

/// @nodoc
class __$$ManageAccountStateImplCopyWithImpl<$Res>
    extends _$ManageAccountStateCopyWithImpl<$Res, _$ManageAccountStateImpl>
    implements _$$ManageAccountStateImplCopyWith<$Res> {
  __$$ManageAccountStateImplCopyWithImpl(_$ManageAccountStateImpl _value,
      $Res Function(_$ManageAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? name = null,
    Object? teamName = null,
    Object? userId = null,
    Object? showErrorMessages = null,
    Object? suspensionState = null,
    Object? isSubmitting = null,
    Object? operationFailureOrSuccessOption = null,
  }) {
    return _then(_$ManageAccountStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as TeamName,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      suspensionState: null == suspensionState
          ? _value.suspensionState
          : suspensionState // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      operationFailureOrSuccessOption: null == operationFailureOrSuccessOption
          ? _value.operationFailureOrSuccessOption
          : operationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ManageAccountFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ManageAccountStateImpl implements _ManageAccountState {
  const _$ManageAccountStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.name,
      required this.teamName,
      required this.userId,
      required this.showErrorMessages,
      required this.suspensionState,
      required this.isSubmitting,
      required this.operationFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Name name;
  @override
  final TeamName teamName;
  @override
  final String userId;
  @override
  final bool showErrorMessages;
  @override
  final bool suspensionState;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ManageAccountFailure, Unit>>
      operationFailureOrSuccessOption;

  @override
  String toString() {
    return 'ManageAccountState(emailAddress: $emailAddress, password: $password, name: $name, teamName: $teamName, userId: $userId, showErrorMessages: $showErrorMessages, suspensionState: $suspensionState, isSubmitting: $isSubmitting, operationFailureOrSuccessOption: $operationFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageAccountStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.suspensionState, suspensionState) ||
                other.suspensionState == suspensionState) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.operationFailureOrSuccessOption,
                    operationFailureOrSuccessOption) ||
                other.operationFailureOrSuccessOption ==
                    operationFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      name,
      teamName,
      userId,
      showErrorMessages,
      suspensionState,
      isSubmitting,
      operationFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageAccountStateImplCopyWith<_$ManageAccountStateImpl> get copyWith =>
      __$$ManageAccountStateImplCopyWithImpl<_$ManageAccountStateImpl>(
          this, _$identity);
}

abstract class _ManageAccountState implements ManageAccountState {
  const factory _ManageAccountState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final Name name,
      required final TeamName teamName,
      required final String userId,
      required final bool showErrorMessages,
      required final bool suspensionState,
      required final bool isSubmitting,
      required final Option<Either<ManageAccountFailure, Unit>>
          operationFailureOrSuccessOption}) = _$ManageAccountStateImpl;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Name get name;
  @override
  TeamName get teamName;
  @override
  String get userId;
  @override
  bool get showErrorMessages;
  @override
  bool get suspensionState;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ManageAccountFailure, Unit>>
      get operationFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$ManageAccountStateImplCopyWith<_$ManageAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
