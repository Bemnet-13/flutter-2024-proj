// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteAvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function() deleteStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function()? deleteStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function()? deleteStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DeleteStarted value) deleteStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_DeleteStarted value)? deleteStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DeleteStarted value)? deleteStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAvatarEventCopyWith<$Res> {
  factory $DeleteAvatarEventCopyWith(
          DeleteAvatarEvent value, $Res Function(DeleteAvatarEvent) then) =
      _$DeleteAvatarEventCopyWithImpl<$Res, DeleteAvatarEvent>;
}

/// @nodoc
class _$DeleteAvatarEventCopyWithImpl<$Res, $Val extends DeleteAvatarEvent>
    implements $DeleteAvatarEventCopyWith<$Res> {
  _$DeleteAvatarEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<Avatar> initialAvatarOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$DeleteAvatarEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialAvatarOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialAvatarOption
          ? _value.initialAvatarOption
          : initialAvatarOption // ignore: cast_nullable_to_non_nullable
              as Option<Avatar>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialAvatarOption);

  @override
  final Option<Avatar> initialAvatarOption;

  @override
  String toString() {
    return 'DeleteAvatarEvent.initialized(initialAvatarOption: $initialAvatarOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialAvatarOption, initialAvatarOption) ||
                other.initialAvatarOption == initialAvatarOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialAvatarOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function() deleteStarted,
  }) {
    return initialized(initialAvatarOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function()? deleteStarted,
  }) {
    return initialized?.call(initialAvatarOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function()? deleteStarted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialAvatarOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DeleteStarted value) deleteStarted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_DeleteStarted value)? deleteStarted,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DeleteStarted value)? deleteStarted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DeleteAvatarEvent {
  const factory _Initialized(final Option<Avatar> initialAvatarOption) =
      _$InitializedImpl;

  Option<Avatar> get initialAvatarOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStartedImplCopyWith<$Res> {
  factory _$$DeleteStartedImplCopyWith(
          _$DeleteStartedImpl value, $Res Function(_$DeleteStartedImpl) then) =
      __$$DeleteStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteStartedImplCopyWithImpl<$Res>
    extends _$DeleteAvatarEventCopyWithImpl<$Res, _$DeleteStartedImpl>
    implements _$$DeleteStartedImplCopyWith<$Res> {
  __$$DeleteStartedImplCopyWithImpl(
      _$DeleteStartedImpl _value, $Res Function(_$DeleteStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteStartedImpl implements _DeleteStarted {
  const _$DeleteStartedImpl();

  @override
  String toString() {
    return 'DeleteAvatarEvent.deleteStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function() deleteStarted,
  }) {
    return deleteStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function()? deleteStarted,
  }) {
    return deleteStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function()? deleteStarted,
    required TResult orElse(),
  }) {
    if (deleteStarted != null) {
      return deleteStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DeleteStarted value) deleteStarted,
  }) {
    return deleteStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_DeleteStarted value)? deleteStarted,
  }) {
    return deleteStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DeleteStarted value)? deleteStarted,
    required TResult orElse(),
  }) {
    if (deleteStarted != null) {
      return deleteStarted(this);
    }
    return orElse();
  }
}

abstract class _DeleteStarted implements DeleteAvatarEvent {
  const factory _DeleteStarted() = _$DeleteStartedImpl;
}

/// @nodoc
mixin _$DeleteAvatarState {
  Avatar get avatar => throw _privateConstructorUsedError;
  Option<Either<AvatarFailure, Unit>> get deleteFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteAvatarStateCopyWith<DeleteAvatarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAvatarStateCopyWith<$Res> {
  factory $DeleteAvatarStateCopyWith(
          DeleteAvatarState value, $Res Function(DeleteAvatarState) then) =
      _$DeleteAvatarStateCopyWithImpl<$Res, DeleteAvatarState>;
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> deleteFailureOrSuccessOption});

  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class _$DeleteAvatarStateCopyWithImpl<$Res, $Val extends DeleteAvatarState>
    implements $DeleteAvatarStateCopyWith<$Res> {
  _$DeleteAvatarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? deleteFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DeleteAvatarStateImplCopyWith<$Res>
    implements $DeleteAvatarStateCopyWith<$Res> {
  factory _$$DeleteAvatarStateImplCopyWith(_$DeleteAvatarStateImpl value,
          $Res Function(_$DeleteAvatarStateImpl) then) =
      __$$DeleteAvatarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> deleteFailureOrSuccessOption});

  @override
  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$DeleteAvatarStateImplCopyWithImpl<$Res>
    extends _$DeleteAvatarStateCopyWithImpl<$Res, _$DeleteAvatarStateImpl>
    implements _$$DeleteAvatarStateImplCopyWith<$Res> {
  __$$DeleteAvatarStateImplCopyWithImpl(_$DeleteAvatarStateImpl _value,
      $Res Function(_$DeleteAvatarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? deleteFailureOrSuccessOption = null,
  }) {
    return _then(_$DeleteAvatarStateImpl(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$DeleteAvatarStateImpl implements _DeleteAvatarState {
  const _$DeleteAvatarStateImpl(
      {required this.avatar, required this.deleteFailureOrSuccessOption});

  @override
  final Avatar avatar;
  @override
  final Option<Either<AvatarFailure, Unit>> deleteFailureOrSuccessOption;

  @override
  String toString() {
    return 'DeleteAvatarState(avatar: $avatar, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAvatarStateImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                other.deleteFailureOrSuccessOption ==
                    deleteFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, avatar, deleteFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAvatarStateImplCopyWith<_$DeleteAvatarStateImpl> get copyWith =>
      __$$DeleteAvatarStateImplCopyWithImpl<_$DeleteAvatarStateImpl>(
          this, _$identity);
}

abstract class _DeleteAvatarState implements DeleteAvatarState {
  const factory _DeleteAvatarState(
      {required final Avatar avatar,
      required final Option<Either<AvatarFailure, Unit>>
          deleteFailureOrSuccessOption}) = _$DeleteAvatarStateImpl;

  @override
  Avatar get avatar;
  @override
  Option<Either<AvatarFailure, Unit>> get deleteFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$DeleteAvatarStateImplCopyWith<_$DeleteAvatarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
