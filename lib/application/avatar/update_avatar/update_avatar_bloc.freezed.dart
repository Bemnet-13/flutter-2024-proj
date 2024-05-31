// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateAvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Avatar avatar) initialized,
    required TResult Function() updateStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Avatar avatar)? initialized,
    TResult? Function()? updateStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Avatar avatar)? initialized,
    TResult Function()? updateStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateStarted value) updateStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateStarted value)? updateStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateStarted value)? updateStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAvatarEventCopyWith<$Res> {
  factory $UpdateAvatarEventCopyWith(
          UpdateAvatarEvent value, $Res Function(UpdateAvatarEvent) then) =
      _$UpdateAvatarEventCopyWithImpl<$Res, UpdateAvatarEvent>;
}

/// @nodoc
class _$UpdateAvatarEventCopyWithImpl<$Res, $Val extends UpdateAvatarEvent>
    implements $UpdateAvatarEventCopyWith<$Res> {
  _$UpdateAvatarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Avatar avatar});

  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$UpdateAvatarEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$InitializedImpl(
      null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AvatarCopyWith<$Res> get avatar {
    return $AvatarCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.avatar);

  @override
  final Avatar avatar;

  @override
  String toString() {
    return 'UpdateAvatarEvent.initialized(avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Avatar avatar) initialized,
    required TResult Function() updateStarted,
  }) {
    return initialized(avatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Avatar avatar)? initialized,
    TResult? Function()? updateStarted,
  }) {
    return initialized?.call(avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Avatar avatar)? initialized,
    TResult Function()? updateStarted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateStarted value) updateStarted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateStarted value)? updateStarted,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateStarted value)? updateStarted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UpdateAvatarEvent {
  const factory _Initialized(final Avatar avatar) = _$InitializedImpl;

  Avatar get avatar;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStartedImplCopyWith<$Res> {
  factory _$$UpdateStartedImplCopyWith(
          _$UpdateStartedImpl value, $Res Function(_$UpdateStartedImpl) then) =
      __$$UpdateStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateStartedImplCopyWithImpl<$Res>
    extends _$UpdateAvatarEventCopyWithImpl<$Res, _$UpdateStartedImpl>
    implements _$$UpdateStartedImplCopyWith<$Res> {
  __$$UpdateStartedImplCopyWithImpl(
      _$UpdateStartedImpl _value, $Res Function(_$UpdateStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateStartedImpl implements _UpdateStarted {
  const _$UpdateStartedImpl();

  @override
  String toString() {
    return 'UpdateAvatarEvent.updateStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Avatar avatar) initialized,
    required TResult Function() updateStarted,
  }) {
    return updateStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Avatar avatar)? initialized,
    TResult? Function()? updateStarted,
  }) {
    return updateStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Avatar avatar)? initialized,
    TResult Function()? updateStarted,
    required TResult orElse(),
  }) {
    if (updateStarted != null) {
      return updateStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UpdateStarted value) updateStarted,
  }) {
    return updateStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UpdateStarted value)? updateStarted,
  }) {
    return updateStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UpdateStarted value)? updateStarted,
    required TResult orElse(),
  }) {
    if (updateStarted != null) {
      return updateStarted(this);
    }
    return orElse();
  }
}

abstract class _UpdateStarted implements UpdateAvatarEvent {
  const factory _UpdateStarted() = _$UpdateStartedImpl;
}

/// @nodoc
mixin _$UpdateAvatarState {
  Avatar get avatar => throw _privateConstructorUsedError;
  Option<Either<AvatarFailure, Unit>> get updateFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateAvatarStateCopyWith<UpdateAvatarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAvatarStateCopyWith<$Res> {
  factory $UpdateAvatarStateCopyWith(
          UpdateAvatarState value, $Res Function(UpdateAvatarState) then) =
      _$UpdateAvatarStateCopyWithImpl<$Res, UpdateAvatarState>;
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> updateFailureOrSuccessOption});

  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class _$UpdateAvatarStateCopyWithImpl<$Res, $Val extends UpdateAvatarState>
    implements $UpdateAvatarStateCopyWith<$Res> {
  _$UpdateAvatarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvatarCopyWith<$Res> get avatar {
    return $AvatarCopyWith<$Res>(_value.avatar, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateAvatarStateImplCopyWith<$Res>
    implements $UpdateAvatarStateCopyWith<$Res> {
  factory _$$UpdateAvatarStateImplCopyWith(_$UpdateAvatarStateImpl value,
          $Res Function(_$UpdateAvatarStateImpl) then) =
      __$$UpdateAvatarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> updateFailureOrSuccessOption});

  @override
  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$UpdateAvatarStateImplCopyWithImpl<$Res>
    extends _$UpdateAvatarStateCopyWithImpl<$Res, _$UpdateAvatarStateImpl>
    implements _$$UpdateAvatarStateImplCopyWith<$Res> {
  __$$UpdateAvatarStateImplCopyWithImpl(_$UpdateAvatarStateImpl _value,
      $Res Function(_$UpdateAvatarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? updateFailureOrSuccessOption = null,
  }) {
    return _then(_$UpdateAvatarStateImpl(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      updateFailureOrSuccessOption: null == updateFailureOrSuccessOption
          ? _value.updateFailureOrSuccessOption
          : updateFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$UpdateAvatarStateImpl implements _UpdateAvatarState {
  const _$UpdateAvatarStateImpl(
      {required this.avatar, required this.updateFailureOrSuccessOption});

  @override
  final Avatar avatar;
  @override
  final Option<Either<AvatarFailure, Unit>> updateFailureOrSuccessOption;

  @override
  String toString() {
    return 'UpdateAvatarState(avatar: $avatar, updateFailureOrSuccessOption: $updateFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAvatarStateImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.updateFailureOrSuccessOption,
                    updateFailureOrSuccessOption) ||
                other.updateFailureOrSuccessOption ==
                    updateFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, avatar, updateFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAvatarStateImplCopyWith<_$UpdateAvatarStateImpl> get copyWith =>
      __$$UpdateAvatarStateImplCopyWithImpl<_$UpdateAvatarStateImpl>(
          this, _$identity);
}

abstract class _UpdateAvatarState implements UpdateAvatarState {
  const factory _UpdateAvatarState(
      {required final Avatar avatar,
      required final Option<Either<AvatarFailure, Unit>>
          updateFailureOrSuccessOption}) = _$UpdateAvatarStateImpl;

  @override
  Avatar get avatar;
  @override
  Option<Either<AvatarFailure, Unit>> get updateFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$UpdateAvatarStateImplCopyWith<_$UpdateAvatarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
