// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String role) chipSelected,
    required TResult Function(int value) updateChip,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String role)? chipSelected,
    TResult? Function(int value)? updateChip,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String role)? chipSelected,
    TResult Function(int value)? updateChip,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ChipSelected value) chipSelected,
    required TResult Function(UpdateChip value) updateChip,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ChipSelected value)? chipSelected,
    TResult? Function(UpdateChip value)? updateChip,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ChipSelected value)? chipSelected,
    TResult Function(UpdateChip value)? updateChip,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormEventCopyWith<$Res> {
  factory $SignupFormEventCopyWith(
          SignupFormEvent value, $Res Function(SignupFormEvent) then) =
      _$SignupFormEventCopyWithImpl<$Res, SignupFormEvent>;
}

/// @nodoc
class _$SignupFormEventCopyWithImpl<$Res, $Val extends SignupFormEvent>
    implements $SignupFormEventCopyWith<$Res> {
  _$SignupFormEventCopyWithImpl(this._value, this._then);

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
    extends _$SignupFormEventCopyWithImpl<$Res, _$NameChangedImpl>
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
    return 'SignupFormEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String role) chipSelected,
    required TResult Function(int value) updateChip,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String role)? chipSelected,
    TResult? Function(int value)? updateChip,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String role)? chipSelected,
    TResult Function(int value)? updateChip,
    TResult Function()? registerWithEmailAndPasswordPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ChipSelected value) chipSelected,
    required TResult Function(UpdateChip value) updateChip,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ChipSelected value)? chipSelected,
    TResult? Function(UpdateChip value)? updateChip,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ChipSelected value)? chipSelected,
    TResult Function(UpdateChip value)? updateChip,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SignupFormEvent {
  const factory NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
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
    extends _$SignupFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
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
    return 'SignupFormEvent.emailChanged(emailStr: $emailStr)';
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
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String role) chipSelected,
    required TResult Function(int value) updateChip,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String role)? chipSelected,
    TResult? Function(int value)? updateChip,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String role)? chipSelected,
    TResult Function(int value)? updateChip,
    TResult Function()? registerWithEmailAndPasswordPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ChipSelected value) chipSelected,
    required TResult Function(UpdateChip value) updateChip,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ChipSelected value)? chipSelected,
    TResult? Function(UpdateChip value)? updateChip,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ChipSelected value)? chipSelected,
    TResult Function(UpdateChip value)? updateChip,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignupFormEvent {
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
    extends _$SignupFormEventCopyWithImpl<$Res, _$PasswordChangedImpl>
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
    return 'SignupFormEvent.passwordChanged(passwordStr: $passwordStr)';
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
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String role) chipSelected,
    required TResult Function(int value) updateChip,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String role)? chipSelected,
    TResult? Function(int value)? updateChip,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String role)? chipSelected,
    TResult Function(int value)? updateChip,
    TResult Function()? registerWithEmailAndPasswordPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ChipSelected value) chipSelected,
    required TResult Function(UpdateChip value) updateChip,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ChipSelected value)? chipSelected,
    TResult? Function(UpdateChip value)? updateChip,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ChipSelected value)? chipSelected,
    TResult Function(UpdateChip value)? updateChip,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignupFormEvent {
  const factory PasswordChanged(final String passwordStr) =
      _$PasswordChangedImpl;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChipSelectedImplCopyWith<$Res> {
  factory _$$ChipSelectedImplCopyWith(
          _$ChipSelectedImpl value, $Res Function(_$ChipSelectedImpl) then) =
      __$$ChipSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String role});
}

/// @nodoc
class __$$ChipSelectedImplCopyWithImpl<$Res>
    extends _$SignupFormEventCopyWithImpl<$Res, _$ChipSelectedImpl>
    implements _$$ChipSelectedImplCopyWith<$Res> {
  __$$ChipSelectedImplCopyWithImpl(
      _$ChipSelectedImpl _value, $Res Function(_$ChipSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$ChipSelectedImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChipSelectedImpl implements ChipSelected {
  const _$ChipSelectedImpl(this.role);

  @override
  final String role;

  @override
  String toString() {
    return 'SignupFormEvent.chipSelected(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChipSelectedImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChipSelectedImplCopyWith<_$ChipSelectedImpl> get copyWith =>
      __$$ChipSelectedImplCopyWithImpl<_$ChipSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String role) chipSelected,
    required TResult Function(int value) updateChip,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return chipSelected(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String role)? chipSelected,
    TResult? Function(int value)? updateChip,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return chipSelected?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String role)? chipSelected,
    TResult Function(int value)? updateChip,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (chipSelected != null) {
      return chipSelected(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ChipSelected value) chipSelected,
    required TResult Function(UpdateChip value) updateChip,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return chipSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ChipSelected value)? chipSelected,
    TResult? Function(UpdateChip value)? updateChip,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return chipSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ChipSelected value)? chipSelected,
    TResult Function(UpdateChip value)? updateChip,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (chipSelected != null) {
      return chipSelected(this);
    }
    return orElse();
  }
}

abstract class ChipSelected implements SignupFormEvent {
  const factory ChipSelected(final String role) = _$ChipSelectedImpl;

  String get role;
  @JsonKey(ignore: true)
  _$$ChipSelectedImplCopyWith<_$ChipSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateChipImplCopyWith<$Res> {
  factory _$$UpdateChipImplCopyWith(
          _$UpdateChipImpl value, $Res Function(_$UpdateChipImpl) then) =
      __$$UpdateChipImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$UpdateChipImplCopyWithImpl<$Res>
    extends _$SignupFormEventCopyWithImpl<$Res, _$UpdateChipImpl>
    implements _$$UpdateChipImplCopyWith<$Res> {
  __$$UpdateChipImplCopyWithImpl(
      _$UpdateChipImpl _value, $Res Function(_$UpdateChipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UpdateChipImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateChipImpl implements UpdateChip {
  const _$UpdateChipImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'SignupFormEvent.updateChip(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateChipImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateChipImplCopyWith<_$UpdateChipImpl> get copyWith =>
      __$$UpdateChipImplCopyWithImpl<_$UpdateChipImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String role) chipSelected,
    required TResult Function(int value) updateChip,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return updateChip(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String role)? chipSelected,
    TResult? Function(int value)? updateChip,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return updateChip?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String role)? chipSelected,
    TResult Function(int value)? updateChip,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (updateChip != null) {
      return updateChip(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ChipSelected value) chipSelected,
    required TResult Function(UpdateChip value) updateChip,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return updateChip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ChipSelected value)? chipSelected,
    TResult? Function(UpdateChip value)? updateChip,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return updateChip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ChipSelected value)? chipSelected,
    TResult Function(UpdateChip value)? updateChip,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (updateChip != null) {
      return updateChip(this);
    }
    return orElse();
  }
}

abstract class UpdateChip implements SignupFormEvent {
  const factory UpdateChip(final int value) = _$UpdateChipImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$UpdateChipImplCopyWith<_$UpdateChipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedImplCopyWith(
          _$RegisterWithEmailAndPasswordPressedImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) then) =
      __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$SignupFormEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordPressedImpl>
    implements _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressedImpl
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressedImpl();

  @override
  String toString() {
    return 'SignupFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String role) chipSelected,
    required TResult Function(int value) updateChip,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String role)? chipSelected,
    TResult? Function(int value)? updateChip,
    TResult? Function()? registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String role)? chipSelected,
    TResult Function(int value)? updateChip,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ChipSelected value) chipSelected,
    required TResult Function(UpdateChip value) updateChip,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ChipSelected value)? chipSelected,
    TResult? Function(UpdateChip value)? updateChip,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ChipSelected value)? chipSelected,
    TResult Function(UpdateChip value)? updateChip,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignupFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressedImpl;
}

/// @nodoc
mixin _$LoginFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roleStr) roleSelected,
    required TResult Function(String emailStr) emailChangedInLogin,
    required TResult Function(String passwordStr) passwordChangedInLogin,
    required TResult Function() loginWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roleStr)? roleSelected,
    TResult? Function(String emailStr)? emailChangedInLogin,
    TResult? Function(String passwordStr)? passwordChangedInLogin,
    TResult? Function()? loginWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roleStr)? roleSelected,
    TResult Function(String emailStr)? emailChangedInLogin,
    TResult Function(String passwordStr)? passwordChangedInLogin,
    TResult Function()? loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleSelected value) roleSelected,
    required TResult Function(EmailChangedInLogin value) emailChangedInLogin,
    required TResult Function(PasswordChangedInLogin value)
        passwordChangedInLogin,
    required TResult Function(LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleSelected value)? roleSelected,
    TResult? Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult? Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult? Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleSelected value)? roleSelected,
    TResult Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res, LoginFormEvent>;
}

/// @nodoc
class _$LoginFormEventCopyWithImpl<$Res, $Val extends LoginFormEvent>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoleSelectedImplCopyWith<$Res> {
  factory _$$RoleSelectedImplCopyWith(
          _$RoleSelectedImpl value, $Res Function(_$RoleSelectedImpl) then) =
      __$$RoleSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roleStr});
}

/// @nodoc
class __$$RoleSelectedImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$RoleSelectedImpl>
    implements _$$RoleSelectedImplCopyWith<$Res> {
  __$$RoleSelectedImplCopyWithImpl(
      _$RoleSelectedImpl _value, $Res Function(_$RoleSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleStr = null,
  }) {
    return _then(_$RoleSelectedImpl(
      null == roleStr
          ? _value.roleStr
          : roleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoleSelectedImpl implements RoleSelected {
  const _$RoleSelectedImpl(this.roleStr);

  @override
  final String roleStr;

  @override
  String toString() {
    return 'LoginFormEvent.roleSelected(roleStr: $roleStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleSelectedImpl &&
            (identical(other.roleStr, roleStr) || other.roleStr == roleStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleSelectedImplCopyWith<_$RoleSelectedImpl> get copyWith =>
      __$$RoleSelectedImplCopyWithImpl<_$RoleSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roleStr) roleSelected,
    required TResult Function(String emailStr) emailChangedInLogin,
    required TResult Function(String passwordStr) passwordChangedInLogin,
    required TResult Function() loginWithEmailAndPasswordPressed,
  }) {
    return roleSelected(roleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roleStr)? roleSelected,
    TResult? Function(String emailStr)? emailChangedInLogin,
    TResult? Function(String passwordStr)? passwordChangedInLogin,
    TResult? Function()? loginWithEmailAndPasswordPressed,
  }) {
    return roleSelected?.call(roleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roleStr)? roleSelected,
    TResult Function(String emailStr)? emailChangedInLogin,
    TResult Function(String passwordStr)? passwordChangedInLogin,
    TResult Function()? loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (roleSelected != null) {
      return roleSelected(roleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleSelected value) roleSelected,
    required TResult Function(EmailChangedInLogin value) emailChangedInLogin,
    required TResult Function(PasswordChangedInLogin value)
        passwordChangedInLogin,
    required TResult Function(LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
  }) {
    return roleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleSelected value)? roleSelected,
    TResult? Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult? Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult? Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
  }) {
    return roleSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleSelected value)? roleSelected,
    TResult Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (roleSelected != null) {
      return roleSelected(this);
    }
    return orElse();
  }
}

abstract class RoleSelected implements LoginFormEvent {
  const factory RoleSelected(final String roleStr) = _$RoleSelectedImpl;

  String get roleStr;
  @JsonKey(ignore: true)
  _$$RoleSelectedImplCopyWith<_$RoleSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedInLoginImplCopyWith<$Res> {
  factory _$$EmailChangedInLoginImplCopyWith(_$EmailChangedInLoginImpl value,
          $Res Function(_$EmailChangedInLoginImpl) then) =
      __$$EmailChangedInLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedInLoginImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$EmailChangedInLoginImpl>
    implements _$$EmailChangedInLoginImplCopyWith<$Res> {
  __$$EmailChangedInLoginImplCopyWithImpl(_$EmailChangedInLoginImpl _value,
      $Res Function(_$EmailChangedInLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedInLoginImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedInLoginImpl implements EmailChangedInLogin {
  const _$EmailChangedInLoginImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'LoginFormEvent.emailChangedInLogin(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedInLoginImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedInLoginImplCopyWith<_$EmailChangedInLoginImpl> get copyWith =>
      __$$EmailChangedInLoginImplCopyWithImpl<_$EmailChangedInLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roleStr) roleSelected,
    required TResult Function(String emailStr) emailChangedInLogin,
    required TResult Function(String passwordStr) passwordChangedInLogin,
    required TResult Function() loginWithEmailAndPasswordPressed,
  }) {
    return emailChangedInLogin(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roleStr)? roleSelected,
    TResult? Function(String emailStr)? emailChangedInLogin,
    TResult? Function(String passwordStr)? passwordChangedInLogin,
    TResult? Function()? loginWithEmailAndPasswordPressed,
  }) {
    return emailChangedInLogin?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roleStr)? roleSelected,
    TResult Function(String emailStr)? emailChangedInLogin,
    TResult Function(String passwordStr)? passwordChangedInLogin,
    TResult Function()? loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChangedInLogin != null) {
      return emailChangedInLogin(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleSelected value) roleSelected,
    required TResult Function(EmailChangedInLogin value) emailChangedInLogin,
    required TResult Function(PasswordChangedInLogin value)
        passwordChangedInLogin,
    required TResult Function(LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
  }) {
    return emailChangedInLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleSelected value)? roleSelected,
    TResult? Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult? Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult? Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
  }) {
    return emailChangedInLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleSelected value)? roleSelected,
    TResult Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChangedInLogin != null) {
      return emailChangedInLogin(this);
    }
    return orElse();
  }
}

abstract class EmailChangedInLogin implements LoginFormEvent {
  const factory EmailChangedInLogin(final String emailStr) =
      _$EmailChangedInLoginImpl;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedInLoginImplCopyWith<_$EmailChangedInLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedInLoginImplCopyWith<$Res> {
  factory _$$PasswordChangedInLoginImplCopyWith(
          _$PasswordChangedInLoginImpl value,
          $Res Function(_$PasswordChangedInLoginImpl) then) =
      __$$PasswordChangedInLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedInLoginImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res, _$PasswordChangedInLoginImpl>
    implements _$$PasswordChangedInLoginImplCopyWith<$Res> {
  __$$PasswordChangedInLoginImplCopyWithImpl(
      _$PasswordChangedInLoginImpl _value,
      $Res Function(_$PasswordChangedInLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChangedInLoginImpl(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedInLoginImpl implements PasswordChangedInLogin {
  const _$PasswordChangedInLoginImpl(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'LoginFormEvent.passwordChangedInLogin(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedInLoginImpl &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedInLoginImplCopyWith<_$PasswordChangedInLoginImpl>
      get copyWith => __$$PasswordChangedInLoginImplCopyWithImpl<
          _$PasswordChangedInLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roleStr) roleSelected,
    required TResult Function(String emailStr) emailChangedInLogin,
    required TResult Function(String passwordStr) passwordChangedInLogin,
    required TResult Function() loginWithEmailAndPasswordPressed,
  }) {
    return passwordChangedInLogin(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roleStr)? roleSelected,
    TResult? Function(String emailStr)? emailChangedInLogin,
    TResult? Function(String passwordStr)? passwordChangedInLogin,
    TResult? Function()? loginWithEmailAndPasswordPressed,
  }) {
    return passwordChangedInLogin?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roleStr)? roleSelected,
    TResult Function(String emailStr)? emailChangedInLogin,
    TResult Function(String passwordStr)? passwordChangedInLogin,
    TResult Function()? loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChangedInLogin != null) {
      return passwordChangedInLogin(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleSelected value) roleSelected,
    required TResult Function(EmailChangedInLogin value) emailChangedInLogin,
    required TResult Function(PasswordChangedInLogin value)
        passwordChangedInLogin,
    required TResult Function(LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
  }) {
    return passwordChangedInLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleSelected value)? roleSelected,
    TResult? Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult? Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult? Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
  }) {
    return passwordChangedInLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleSelected value)? roleSelected,
    TResult Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChangedInLogin != null) {
      return passwordChangedInLogin(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedInLogin implements LoginFormEvent {
  const factory PasswordChangedInLogin(final String passwordStr) =
      _$PasswordChangedInLoginImpl;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedInLoginImplCopyWith<_$PasswordChangedInLoginImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$LoginWithEmailAndPasswordPressedImplCopyWith(
          _$LoginWithEmailAndPasswordPressedImpl value,
          $Res Function(_$LoginWithEmailAndPasswordPressedImpl) then) =
      __$$LoginWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res,
        _$LoginWithEmailAndPasswordPressedImpl>
    implements _$$LoginWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$LoginWithEmailAndPasswordPressedImplCopyWithImpl(
      _$LoginWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$LoginWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithEmailAndPasswordPressedImpl
    implements LoginWithEmailAndPasswordPressed {
  const _$LoginWithEmailAndPasswordPressedImpl();

  @override
  String toString() {
    return 'LoginFormEvent.loginWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roleStr) roleSelected,
    required TResult Function(String emailStr) emailChangedInLogin,
    required TResult Function(String passwordStr) passwordChangedInLogin,
    required TResult Function() loginWithEmailAndPasswordPressed,
  }) {
    return loginWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roleStr)? roleSelected,
    TResult? Function(String emailStr)? emailChangedInLogin,
    TResult? Function(String passwordStr)? passwordChangedInLogin,
    TResult? Function()? loginWithEmailAndPasswordPressed,
  }) {
    return loginWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roleStr)? roleSelected,
    TResult Function(String emailStr)? emailChangedInLogin,
    TResult Function(String passwordStr)? passwordChangedInLogin,
    TResult Function()? loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPasswordPressed != null) {
      return loginWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleSelected value) roleSelected,
    required TResult Function(EmailChangedInLogin value) emailChangedInLogin,
    required TResult Function(PasswordChangedInLogin value)
        passwordChangedInLogin,
    required TResult Function(LoginWithEmailAndPasswordPressed value)
        loginWithEmailAndPasswordPressed,
  }) {
    return loginWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleSelected value)? roleSelected,
    TResult? Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult? Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult? Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
  }) {
    return loginWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleSelected value)? roleSelected,
    TResult Function(EmailChangedInLogin value)? emailChangedInLogin,
    TResult Function(PasswordChangedInLogin value)? passwordChangedInLogin,
    TResult Function(LoginWithEmailAndPasswordPressed value)?
        loginWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPasswordPressed != null) {
      return loginWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPasswordPressed implements LoginFormEvent {
  const factory LoginWithEmailAndPasswordPressed() =
      _$LoginWithEmailAndPasswordPressedImpl;
}

/// @nodoc
mixin _$SignupFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  int get roleValue => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupFormStateCopyWith<SignupFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormStateCopyWith<$Res> {
  factory $SignupFormStateCopyWith(
          SignupFormState value, $Res Function(SignupFormState) then) =
      _$SignupFormStateCopyWithImpl<$Res, SignupFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Name name,
      Role role,
      int roleValue,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignupFormStateCopyWithImpl<$Res, $Val extends SignupFormState>
    implements $SignupFormStateCopyWith<$Res> {
  _$SignupFormStateCopyWithImpl(this._value, this._then);

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
    Object? role = null,
    Object? roleValue = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      roleValue: null == roleValue
          ? _value.roleValue
          : roleValue // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupFormStateImplCopyWith<$Res>
    implements $SignupFormStateCopyWith<$Res> {
  factory _$$SignupFormStateImplCopyWith(_$SignupFormStateImpl value,
          $Res Function(_$SignupFormStateImpl) then) =
      __$$SignupFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Name name,
      Role role,
      int roleValue,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$SignupFormStateImplCopyWithImpl<$Res>
    extends _$SignupFormStateCopyWithImpl<$Res, _$SignupFormStateImpl>
    implements _$$SignupFormStateImplCopyWith<$Res> {
  __$$SignupFormStateImplCopyWithImpl(
      _$SignupFormStateImpl _value, $Res Function(_$SignupFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? name = null,
    Object? role = null,
    Object? roleValue = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$SignupFormStateImpl(
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      roleValue: null == roleValue
          ? _value.roleValue
          : roleValue // ignore: cast_nullable_to_non_nullable
              as int,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SignupFormStateImpl extends _SignupFormState {
  const _$SignupFormStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.name,
      required this.role,
      required this.roleValue,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Name name;
  @override
  final Role role;
  @override
  final int roleValue;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFormStateImplCopyWith<_$SignupFormStateImpl> get copyWith =>
      __$$SignupFormStateImplCopyWithImpl<_$SignupFormStateImpl>(
          this, _$identity);
}

abstract class _SignupFormState extends SignupFormState {
  const factory _SignupFormState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final Name name,
      required final Role role,
      required final int roleValue,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$SignupFormStateImpl;
  const _SignupFormState._() : super._();

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Name get name;
  @override
  Role get role;
  @override
  int get roleValue;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SignupFormStateImplCopyWith<_$SignupFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res, LoginFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Role role,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res, $Val extends LoginFormState>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? role = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormStateImplCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$LoginFormStateImplCopyWith(_$LoginFormStateImpl value,
          $Res Function(_$LoginFormStateImpl) then) =
      __$$LoginFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Role role,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$LoginFormStateImplCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res, _$LoginFormStateImpl>
    implements _$$LoginFormStateImplCopyWith<$Res> {
  __$$LoginFormStateImplCopyWithImpl(
      _$LoginFormStateImpl _value, $Res Function(_$LoginFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? role = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$LoginFormStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$LoginFormStateImpl extends _LoginFormState {
  const _$LoginFormStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.role,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Role role;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      __$$LoginFormStateImplCopyWithImpl<_$LoginFormStateImpl>(
          this, _$identity);
}

abstract class _LoginFormState extends LoginFormState {
  const factory _LoginFormState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final Role role,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$LoginFormStateImpl;
  const _LoginFormState._() : super._();

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Role get role;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormStateImplCopyWith<_$LoginFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
