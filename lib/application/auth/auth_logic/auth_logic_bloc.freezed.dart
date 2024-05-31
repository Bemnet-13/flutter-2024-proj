// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_logic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthLogicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() authCheckRequested,
    required TResult Function() loginRequestedAsAdmin,
    required TResult Function() loginRequestedAsPlayer,
    required TResult Function() playerAuthenticated,
    required TResult Function() adminAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? authCheckRequested,
    TResult? Function()? loginRequestedAsAdmin,
    TResult? Function()? loginRequestedAsPlayer,
    TResult? Function()? playerAuthenticated,
    TResult? Function()? adminAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? authCheckRequested,
    TResult Function()? loginRequestedAsAdmin,
    TResult Function()? loginRequestedAsPlayer,
    TResult Function()? playerAuthenticated,
    TResult Function()? adminAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(LoginRequestedAsAdmin value)
        loginRequestedAsAdmin,
    required TResult Function(LoginRequestedAsPlayer value)
        loginRequestedAsPlayer,
    required TResult Function(PlayerAuthenticated value) playerAuthenticated,
    required TResult Function(AdminAuthenticated value) adminAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut value)? loggedOut,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult? Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult? Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult? Function(AdminAuthenticated value)? adminAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult Function(AdminAuthenticated value)? adminAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogicEventCopyWith<$Res> {
  factory $AuthLogicEventCopyWith(
          AuthLogicEvent value, $Res Function(AuthLogicEvent) then) =
      _$AuthLogicEventCopyWithImpl<$Res, AuthLogicEvent>;
}

/// @nodoc
class _$AuthLogicEventCopyWithImpl<$Res, $Val extends AuthLogicEvent>
    implements $AuthLogicEventCopyWith<$Res> {
  _$AuthLogicEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthLogicEventCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthLogicEvent.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() authCheckRequested,
    required TResult Function() loginRequestedAsAdmin,
    required TResult Function() loginRequestedAsPlayer,
    required TResult Function() playerAuthenticated,
    required TResult Function() adminAuthenticated,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? authCheckRequested,
    TResult? Function()? loginRequestedAsAdmin,
    TResult? Function()? loginRequestedAsPlayer,
    TResult? Function()? playerAuthenticated,
    TResult? Function()? adminAuthenticated,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? authCheckRequested,
    TResult Function()? loginRequestedAsAdmin,
    TResult Function()? loginRequestedAsPlayer,
    TResult Function()? playerAuthenticated,
    TResult Function()? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(LoginRequestedAsAdmin value)
        loginRequestedAsAdmin,
    required TResult Function(LoginRequestedAsPlayer value)
        loginRequestedAsPlayer,
    required TResult Function(PlayerAuthenticated value) playerAuthenticated,
    required TResult Function(AdminAuthenticated value) adminAuthenticated,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut value)? loggedOut,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult? Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult? Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult? Function(AdminAuthenticated value)? adminAuthenticated,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult Function(AdminAuthenticated value)? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements AuthLogicEvent {
  const factory LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$AuthCheckRequestedImplCopyWith<$Res> {
  factory _$$AuthCheckRequestedImplCopyWith(_$AuthCheckRequestedImpl value,
          $Res Function(_$AuthCheckRequestedImpl) then) =
      __$$AuthCheckRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestedImplCopyWithImpl<$Res>
    extends _$AuthLogicEventCopyWithImpl<$Res, _$AuthCheckRequestedImpl>
    implements _$$AuthCheckRequestedImplCopyWith<$Res> {
  __$$AuthCheckRequestedImplCopyWithImpl(_$AuthCheckRequestedImpl _value,
      $Res Function(_$AuthCheckRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckRequestedImpl implements AuthCheckRequested {
  const _$AuthCheckRequestedImpl();

  @override
  String toString() {
    return 'AuthLogicEvent.authCheckRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() authCheckRequested,
    required TResult Function() loginRequestedAsAdmin,
    required TResult Function() loginRequestedAsPlayer,
    required TResult Function() playerAuthenticated,
    required TResult Function() adminAuthenticated,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? authCheckRequested,
    TResult? Function()? loginRequestedAsAdmin,
    TResult? Function()? loginRequestedAsPlayer,
    TResult? Function()? playerAuthenticated,
    TResult? Function()? adminAuthenticated,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? authCheckRequested,
    TResult Function()? loginRequestedAsAdmin,
    TResult Function()? loginRequestedAsPlayer,
    TResult Function()? playerAuthenticated,
    TResult Function()? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(LoginRequestedAsAdmin value)
        loginRequestedAsAdmin,
    required TResult Function(LoginRequestedAsPlayer value)
        loginRequestedAsPlayer,
    required TResult Function(PlayerAuthenticated value) playerAuthenticated,
    required TResult Function(AdminAuthenticated value) adminAuthenticated,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut value)? loggedOut,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult? Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult? Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult? Function(AdminAuthenticated value)? adminAuthenticated,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult Function(AdminAuthenticated value)? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthLogicEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequestedImpl;
}

/// @nodoc
abstract class _$$LoginRequestedAsAdminImplCopyWith<$Res> {
  factory _$$LoginRequestedAsAdminImplCopyWith(
          _$LoginRequestedAsAdminImpl value,
          $Res Function(_$LoginRequestedAsAdminImpl) then) =
      __$$LoginRequestedAsAdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginRequestedAsAdminImplCopyWithImpl<$Res>
    extends _$AuthLogicEventCopyWithImpl<$Res, _$LoginRequestedAsAdminImpl>
    implements _$$LoginRequestedAsAdminImplCopyWith<$Res> {
  __$$LoginRequestedAsAdminImplCopyWithImpl(_$LoginRequestedAsAdminImpl _value,
      $Res Function(_$LoginRequestedAsAdminImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginRequestedAsAdminImpl implements LoginRequestedAsAdmin {
  const _$LoginRequestedAsAdminImpl();

  @override
  String toString() {
    return 'AuthLogicEvent.loginRequestedAsAdmin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedAsAdminImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() authCheckRequested,
    required TResult Function() loginRequestedAsAdmin,
    required TResult Function() loginRequestedAsPlayer,
    required TResult Function() playerAuthenticated,
    required TResult Function() adminAuthenticated,
  }) {
    return loginRequestedAsAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? authCheckRequested,
    TResult? Function()? loginRequestedAsAdmin,
    TResult? Function()? loginRequestedAsPlayer,
    TResult? Function()? playerAuthenticated,
    TResult? Function()? adminAuthenticated,
  }) {
    return loginRequestedAsAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? authCheckRequested,
    TResult Function()? loginRequestedAsAdmin,
    TResult Function()? loginRequestedAsPlayer,
    TResult Function()? playerAuthenticated,
    TResult Function()? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (loginRequestedAsAdmin != null) {
      return loginRequestedAsAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(LoginRequestedAsAdmin value)
        loginRequestedAsAdmin,
    required TResult Function(LoginRequestedAsPlayer value)
        loginRequestedAsPlayer,
    required TResult Function(PlayerAuthenticated value) playerAuthenticated,
    required TResult Function(AdminAuthenticated value) adminAuthenticated,
  }) {
    return loginRequestedAsAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut value)? loggedOut,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult? Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult? Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult? Function(AdminAuthenticated value)? adminAuthenticated,
  }) {
    return loginRequestedAsAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult Function(AdminAuthenticated value)? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (loginRequestedAsAdmin != null) {
      return loginRequestedAsAdmin(this);
    }
    return orElse();
  }
}

abstract class LoginRequestedAsAdmin implements AuthLogicEvent {
  const factory LoginRequestedAsAdmin() = _$LoginRequestedAsAdminImpl;
}

/// @nodoc
abstract class _$$LoginRequestedAsPlayerImplCopyWith<$Res> {
  factory _$$LoginRequestedAsPlayerImplCopyWith(
          _$LoginRequestedAsPlayerImpl value,
          $Res Function(_$LoginRequestedAsPlayerImpl) then) =
      __$$LoginRequestedAsPlayerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginRequestedAsPlayerImplCopyWithImpl<$Res>
    extends _$AuthLogicEventCopyWithImpl<$Res, _$LoginRequestedAsPlayerImpl>
    implements _$$LoginRequestedAsPlayerImplCopyWith<$Res> {
  __$$LoginRequestedAsPlayerImplCopyWithImpl(
      _$LoginRequestedAsPlayerImpl _value,
      $Res Function(_$LoginRequestedAsPlayerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginRequestedAsPlayerImpl implements LoginRequestedAsPlayer {
  const _$LoginRequestedAsPlayerImpl();

  @override
  String toString() {
    return 'AuthLogicEvent.loginRequestedAsPlayer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedAsPlayerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() authCheckRequested,
    required TResult Function() loginRequestedAsAdmin,
    required TResult Function() loginRequestedAsPlayer,
    required TResult Function() playerAuthenticated,
    required TResult Function() adminAuthenticated,
  }) {
    return loginRequestedAsPlayer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? authCheckRequested,
    TResult? Function()? loginRequestedAsAdmin,
    TResult? Function()? loginRequestedAsPlayer,
    TResult? Function()? playerAuthenticated,
    TResult? Function()? adminAuthenticated,
  }) {
    return loginRequestedAsPlayer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? authCheckRequested,
    TResult Function()? loginRequestedAsAdmin,
    TResult Function()? loginRequestedAsPlayer,
    TResult Function()? playerAuthenticated,
    TResult Function()? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (loginRequestedAsPlayer != null) {
      return loginRequestedAsPlayer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(LoginRequestedAsAdmin value)
        loginRequestedAsAdmin,
    required TResult Function(LoginRequestedAsPlayer value)
        loginRequestedAsPlayer,
    required TResult Function(PlayerAuthenticated value) playerAuthenticated,
    required TResult Function(AdminAuthenticated value) adminAuthenticated,
  }) {
    return loginRequestedAsPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut value)? loggedOut,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult? Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult? Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult? Function(AdminAuthenticated value)? adminAuthenticated,
  }) {
    return loginRequestedAsPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult Function(AdminAuthenticated value)? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (loginRequestedAsPlayer != null) {
      return loginRequestedAsPlayer(this);
    }
    return orElse();
  }
}

abstract class LoginRequestedAsPlayer implements AuthLogicEvent {
  const factory LoginRequestedAsPlayer() = _$LoginRequestedAsPlayerImpl;
}

/// @nodoc
abstract class _$$PlayerAuthenticatedImplCopyWith<$Res> {
  factory _$$PlayerAuthenticatedImplCopyWith(_$PlayerAuthenticatedImpl value,
          $Res Function(_$PlayerAuthenticatedImpl) then) =
      __$$PlayerAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthLogicEventCopyWithImpl<$Res, _$PlayerAuthenticatedImpl>
    implements _$$PlayerAuthenticatedImplCopyWith<$Res> {
  __$$PlayerAuthenticatedImplCopyWithImpl(_$PlayerAuthenticatedImpl _value,
      $Res Function(_$PlayerAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayerAuthenticatedImpl implements PlayerAuthenticated {
  const _$PlayerAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthLogicEvent.playerAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() authCheckRequested,
    required TResult Function() loginRequestedAsAdmin,
    required TResult Function() loginRequestedAsPlayer,
    required TResult Function() playerAuthenticated,
    required TResult Function() adminAuthenticated,
  }) {
    return playerAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? authCheckRequested,
    TResult? Function()? loginRequestedAsAdmin,
    TResult? Function()? loginRequestedAsPlayer,
    TResult? Function()? playerAuthenticated,
    TResult? Function()? adminAuthenticated,
  }) {
    return playerAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? authCheckRequested,
    TResult Function()? loginRequestedAsAdmin,
    TResult Function()? loginRequestedAsPlayer,
    TResult Function()? playerAuthenticated,
    TResult Function()? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (playerAuthenticated != null) {
      return playerAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(LoginRequestedAsAdmin value)
        loginRequestedAsAdmin,
    required TResult Function(LoginRequestedAsPlayer value)
        loginRequestedAsPlayer,
    required TResult Function(PlayerAuthenticated value) playerAuthenticated,
    required TResult Function(AdminAuthenticated value) adminAuthenticated,
  }) {
    return playerAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut value)? loggedOut,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult? Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult? Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult? Function(AdminAuthenticated value)? adminAuthenticated,
  }) {
    return playerAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult Function(AdminAuthenticated value)? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (playerAuthenticated != null) {
      return playerAuthenticated(this);
    }
    return orElse();
  }
}

abstract class PlayerAuthenticated implements AuthLogicEvent {
  const factory PlayerAuthenticated() = _$PlayerAuthenticatedImpl;
}

/// @nodoc
abstract class _$$AdminAuthenticatedImplCopyWith<$Res> {
  factory _$$AdminAuthenticatedImplCopyWith(_$AdminAuthenticatedImpl value,
          $Res Function(_$AdminAuthenticatedImpl) then) =
      __$$AdminAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthLogicEventCopyWithImpl<$Res, _$AdminAuthenticatedImpl>
    implements _$$AdminAuthenticatedImplCopyWith<$Res> {
  __$$AdminAuthenticatedImplCopyWithImpl(_$AdminAuthenticatedImpl _value,
      $Res Function(_$AdminAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AdminAuthenticatedImpl implements AdminAuthenticated {
  const _$AdminAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthLogicEvent.adminAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AdminAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggedOut,
    required TResult Function() authCheckRequested,
    required TResult Function() loginRequestedAsAdmin,
    required TResult Function() loginRequestedAsPlayer,
    required TResult Function() playerAuthenticated,
    required TResult Function() adminAuthenticated,
  }) {
    return adminAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggedOut,
    TResult? Function()? authCheckRequested,
    TResult? Function()? loginRequestedAsAdmin,
    TResult? Function()? loginRequestedAsPlayer,
    TResult? Function()? playerAuthenticated,
    TResult? Function()? adminAuthenticated,
  }) {
    return adminAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggedOut,
    TResult Function()? authCheckRequested,
    TResult Function()? loginRequestedAsAdmin,
    TResult Function()? loginRequestedAsPlayer,
    TResult Function()? playerAuthenticated,
    TResult Function()? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (adminAuthenticated != null) {
      return adminAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedOut value) loggedOut,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(LoginRequestedAsAdmin value)
        loginRequestedAsAdmin,
    required TResult Function(LoginRequestedAsPlayer value)
        loginRequestedAsPlayer,
    required TResult Function(PlayerAuthenticated value) playerAuthenticated,
    required TResult Function(AdminAuthenticated value) adminAuthenticated,
  }) {
    return adminAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedOut value)? loggedOut,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult? Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult? Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult? Function(AdminAuthenticated value)? adminAuthenticated,
  }) {
    return adminAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedOut value)? loggedOut,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(LoginRequestedAsAdmin value)? loginRequestedAsAdmin,
    TResult Function(LoginRequestedAsPlayer value)? loginRequestedAsPlayer,
    TResult Function(PlayerAuthenticated value)? playerAuthenticated,
    TResult Function(AdminAuthenticated value)? adminAuthenticated,
    required TResult orElse(),
  }) {
    if (adminAuthenticated != null) {
      return adminAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AdminAuthenticated implements AuthLogicEvent {
  const factory AdminAuthenticated() = _$AdminAuthenticatedImpl;
}

/// @nodoc
mixin _$AuthLogicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticatedAsAdmin,
    required TResult Function() authenticatedAsPlayer,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticatedAsAdmin,
    TResult? Function()? authenticatedAsPlayer,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticatedAsAdmin,
    TResult Function()? authenticatedAsPlayer,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticatedAsAdmin value) authenticatedAsAdmin,
    required TResult Function(AuthenticatedAsPlayer value)
        authenticatedAsPlayer,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult? Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogicStateCopyWith<$Res> {
  factory $AuthLogicStateCopyWith(
          AuthLogicState value, $Res Function(AuthLogicState) then) =
      _$AuthLogicStateCopyWithImpl<$Res, AuthLogicState>;
}

/// @nodoc
class _$AuthLogicStateCopyWithImpl<$Res, $Val extends AuthLogicState>
    implements $AuthLogicStateCopyWith<$Res> {
  _$AuthLogicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthLogicStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthLogicState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticatedAsAdmin,
    required TResult Function() authenticatedAsPlayer,
    required TResult Function() unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticatedAsAdmin,
    TResult? Function()? authenticatedAsPlayer,
    TResult? Function()? unauthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticatedAsAdmin,
    TResult Function()? authenticatedAsPlayer,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticatedAsAdmin value) authenticatedAsAdmin,
    required TResult Function(AuthenticatedAsPlayer value)
        authenticatedAsPlayer,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult? Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthLogicState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthenticatedAsAdminImplCopyWith<$Res> {
  factory _$$AuthenticatedAsAdminImplCopyWith(_$AuthenticatedAsAdminImpl value,
          $Res Function(_$AuthenticatedAsAdminImpl) then) =
      __$$AuthenticatedAsAdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedAsAdminImplCopyWithImpl<$Res>
    extends _$AuthLogicStateCopyWithImpl<$Res, _$AuthenticatedAsAdminImpl>
    implements _$$AuthenticatedAsAdminImplCopyWith<$Res> {
  __$$AuthenticatedAsAdminImplCopyWithImpl(_$AuthenticatedAsAdminImpl _value,
      $Res Function(_$AuthenticatedAsAdminImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedAsAdminImpl implements AuthenticatedAsAdmin {
  const _$AuthenticatedAsAdminImpl();

  @override
  String toString() {
    return 'AuthLogicState.authenticatedAsAdmin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedAsAdminImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticatedAsAdmin,
    required TResult Function() authenticatedAsPlayer,
    required TResult Function() unauthenticated,
  }) {
    return authenticatedAsAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticatedAsAdmin,
    TResult? Function()? authenticatedAsPlayer,
    TResult? Function()? unauthenticated,
  }) {
    return authenticatedAsAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticatedAsAdmin,
    TResult Function()? authenticatedAsPlayer,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticatedAsAdmin != null) {
      return authenticatedAsAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticatedAsAdmin value) authenticatedAsAdmin,
    required TResult Function(AuthenticatedAsPlayer value)
        authenticatedAsPlayer,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return authenticatedAsAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult? Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) {
    return authenticatedAsAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticatedAsAdmin != null) {
      return authenticatedAsAdmin(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedAsAdmin implements AuthLogicState {
  const factory AuthenticatedAsAdmin() = _$AuthenticatedAsAdminImpl;
}

/// @nodoc
abstract class _$$AuthenticatedAsPlayerImplCopyWith<$Res> {
  factory _$$AuthenticatedAsPlayerImplCopyWith(
          _$AuthenticatedAsPlayerImpl value,
          $Res Function(_$AuthenticatedAsPlayerImpl) then) =
      __$$AuthenticatedAsPlayerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedAsPlayerImplCopyWithImpl<$Res>
    extends _$AuthLogicStateCopyWithImpl<$Res, _$AuthenticatedAsPlayerImpl>
    implements _$$AuthenticatedAsPlayerImplCopyWith<$Res> {
  __$$AuthenticatedAsPlayerImplCopyWithImpl(_$AuthenticatedAsPlayerImpl _value,
      $Res Function(_$AuthenticatedAsPlayerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedAsPlayerImpl implements AuthenticatedAsPlayer {
  const _$AuthenticatedAsPlayerImpl();

  @override
  String toString() {
    return 'AuthLogicState.authenticatedAsPlayer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedAsPlayerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticatedAsAdmin,
    required TResult Function() authenticatedAsPlayer,
    required TResult Function() unauthenticated,
  }) {
    return authenticatedAsPlayer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticatedAsAdmin,
    TResult? Function()? authenticatedAsPlayer,
    TResult? Function()? unauthenticated,
  }) {
    return authenticatedAsPlayer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticatedAsAdmin,
    TResult Function()? authenticatedAsPlayer,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticatedAsPlayer != null) {
      return authenticatedAsPlayer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticatedAsAdmin value) authenticatedAsAdmin,
    required TResult Function(AuthenticatedAsPlayer value)
        authenticatedAsPlayer,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return authenticatedAsPlayer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult? Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) {
    return authenticatedAsPlayer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticatedAsPlayer != null) {
      return authenticatedAsPlayer(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedAsPlayer implements AuthLogicState {
  const factory AuthenticatedAsPlayer() = _$AuthenticatedAsPlayerImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthLogicStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthLogicState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticatedAsAdmin,
    required TResult Function() authenticatedAsPlayer,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticatedAsAdmin,
    TResult? Function()? authenticatedAsPlayer,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticatedAsAdmin,
    TResult Function()? authenticatedAsPlayer,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthenticatedAsAdmin value) authenticatedAsAdmin,
    required TResult Function(AuthenticatedAsPlayer value)
        authenticatedAsPlayer,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult? Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult? Function(Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthenticatedAsAdmin value)? authenticatedAsAdmin,
    TResult Function(AuthenticatedAsPlayer value)? authenticatedAsPlayer,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthLogicState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}
