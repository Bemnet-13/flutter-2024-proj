// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddAvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function() addStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function()? addStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function()? addStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddStarted value) addStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AddStarted value)? addStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddStarted value)? addStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAvatarEventCopyWith<$Res> {
  factory $AddAvatarEventCopyWith(
          AddAvatarEvent value, $Res Function(AddAvatarEvent) then) =
      _$AddAvatarEventCopyWithImpl<$Res, AddAvatarEvent>;
}

/// @nodoc
class _$AddAvatarEventCopyWithImpl<$Res, $Val extends AddAvatarEvent>
    implements $AddAvatarEventCopyWith<$Res> {
  _$AddAvatarEventCopyWithImpl(this._value, this._then);

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
    extends _$AddAvatarEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'AddAvatarEvent.initialized(initialAvatarOption: $initialAvatarOption)';
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
    required TResult Function() addStarted,
  }) {
    return initialized(initialAvatarOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function()? addStarted,
  }) {
    return initialized?.call(initialAvatarOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function()? addStarted,
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
    required TResult Function(_AddStarted value) addStarted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AddStarted value)? addStarted,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddStarted value)? addStarted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AddAvatarEvent {
  const factory _Initialized(final Option<Avatar> initialAvatarOption) =
      _$InitializedImpl;

  Option<Avatar> get initialAvatarOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddStartedImplCopyWith<$Res> {
  factory _$$AddStartedImplCopyWith(
          _$AddStartedImpl value, $Res Function(_$AddStartedImpl) then) =
      __$$AddStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddStartedImplCopyWithImpl<$Res>
    extends _$AddAvatarEventCopyWithImpl<$Res, _$AddStartedImpl>
    implements _$$AddStartedImplCopyWith<$Res> {
  __$$AddStartedImplCopyWithImpl(
      _$AddStartedImpl _value, $Res Function(_$AddStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddStartedImpl implements _AddStarted {
  const _$AddStartedImpl();

  @override
  String toString() {
    return 'AddAvatarEvent.addStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function() addStarted,
  }) {
    return addStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function()? addStarted,
  }) {
    return addStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function()? addStarted,
    required TResult orElse(),
  }) {
    if (addStarted != null) {
      return addStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddStarted value) addStarted,
  }) {
    return addStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AddStarted value)? addStarted,
  }) {
    return addStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddStarted value)? addStarted,
    required TResult orElse(),
  }) {
    if (addStarted != null) {
      return addStarted(this);
    }
    return orElse();
  }
}

abstract class _AddStarted implements AddAvatarEvent {
  const factory _AddStarted() = _$AddStartedImpl;
}

/// @nodoc
mixin _$AddAvatarState {
  Avatar get avatar => throw _privateConstructorUsedError;
  Option<Either<AvatarFailure, Unit>> get addFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAvatarStateCopyWith<AddAvatarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAvatarStateCopyWith<$Res> {
  factory $AddAvatarStateCopyWith(
          AddAvatarState value, $Res Function(AddAvatarState) then) =
      _$AddAvatarStateCopyWithImpl<$Res, AddAvatarState>;
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption});

  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class _$AddAvatarStateCopyWithImpl<$Res, $Val extends AddAvatarState>
    implements $AddAvatarStateCopyWith<$Res> {
  _$AddAvatarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? addFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      addFailureOrSuccessOption: null == addFailureOrSuccessOption
          ? _value.addFailureOrSuccessOption
          : addFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AddAvatarStateImplCopyWith<$Res>
    implements $AddAvatarStateCopyWith<$Res> {
  factory _$$AddAvatarStateImplCopyWith(_$AddAvatarStateImpl value,
          $Res Function(_$AddAvatarStateImpl) then) =
      __$$AddAvatarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption});

  @override
  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$AddAvatarStateImplCopyWithImpl<$Res>
    extends _$AddAvatarStateCopyWithImpl<$Res, _$AddAvatarStateImpl>
    implements _$$AddAvatarStateImplCopyWith<$Res> {
  __$$AddAvatarStateImplCopyWithImpl(
      _$AddAvatarStateImpl _value, $Res Function(_$AddAvatarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? addFailureOrSuccessOption = null,
  }) {
    return _then(_$AddAvatarStateImpl(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      addFailureOrSuccessOption: null == addFailureOrSuccessOption
          ? _value.addFailureOrSuccessOption
          : addFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AddAvatarStateImpl implements _AddAvatarState {
  const _$AddAvatarStateImpl(
      {required this.avatar, required this.addFailureOrSuccessOption});

  @override
  final Avatar avatar;
  @override
  final Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAvatarStateImplCopyWith<_$AddAvatarStateImpl> get copyWith =>
      __$$AddAvatarStateImplCopyWithImpl<_$AddAvatarStateImpl>(
          this, _$identity);
}

abstract class _AddAvatarState implements AddAvatarState {
  const factory _AddAvatarState(
      {required final Avatar avatar,
      required final Option<Either<AvatarFailure, Unit>>
          addFailureOrSuccessOption}) = _$AddAvatarStateImpl;

  @override
  Avatar get avatar;
  @override
  Option<Either<AvatarFailure, Unit>> get addFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$AddAvatarStateImplCopyWith<_$AddAvatarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
