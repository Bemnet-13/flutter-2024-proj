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
  UniqueId get avatarId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId avatarId) addAvatarStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId avatarId)? addAvatarStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId avatarId)? addAvatarStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAvatarStarted value) addAvatarStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAvatarStarted value)? addAvatarStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAvatarStarted value)? addAvatarStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAvatarEventCopyWith<AddAvatarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAvatarEventCopyWith<$Res> {
  factory $AddAvatarEventCopyWith(
          AddAvatarEvent value, $Res Function(AddAvatarEvent) then) =
      _$AddAvatarEventCopyWithImpl<$Res, AddAvatarEvent>;
  @useResult
  $Res call({UniqueId avatarId});
}

/// @nodoc
class _$AddAvatarEventCopyWithImpl<$Res, $Val extends AddAvatarEvent>
    implements $AddAvatarEventCopyWith<$Res> {
  _$AddAvatarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarId = null,
  }) {
    return _then(_value.copyWith(
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAvatarStartedImplCopyWith<$Res>
    implements $AddAvatarEventCopyWith<$Res> {
  factory _$$AddAvatarStartedImplCopyWith(_$AddAvatarStartedImpl value,
          $Res Function(_$AddAvatarStartedImpl) then) =
      __$$AddAvatarStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId avatarId});
}

/// @nodoc
class __$$AddAvatarStartedImplCopyWithImpl<$Res>
    extends _$AddAvatarEventCopyWithImpl<$Res, _$AddAvatarStartedImpl>
    implements _$$AddAvatarStartedImplCopyWith<$Res> {
  __$$AddAvatarStartedImplCopyWithImpl(_$AddAvatarStartedImpl _value,
      $Res Function(_$AddAvatarStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarId = null,
  }) {
    return _then(_$AddAvatarStartedImpl(
      null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$AddAvatarStartedImpl implements _AddAvatarStarted {
  const _$AddAvatarStartedImpl(this.avatarId);

  @override
  final UniqueId avatarId;

  @override
  String toString() {
    return 'AddAvatarEvent.addAvatarStarted(avatarId: $avatarId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAvatarStartedImpl &&
            (identical(other.avatarId, avatarId) ||
                other.avatarId == avatarId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatarId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAvatarStartedImplCopyWith<_$AddAvatarStartedImpl> get copyWith =>
      __$$AddAvatarStartedImplCopyWithImpl<_$AddAvatarStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId avatarId) addAvatarStarted,
  }) {
    return addAvatarStarted(avatarId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId avatarId)? addAvatarStarted,
  }) {
    return addAvatarStarted?.call(avatarId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId avatarId)? addAvatarStarted,
    required TResult orElse(),
  }) {
    if (addAvatarStarted != null) {
      return addAvatarStarted(avatarId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAvatarStarted value) addAvatarStarted,
  }) {
    return addAvatarStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAvatarStarted value)? addAvatarStarted,
  }) {
    return addAvatarStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAvatarStarted value)? addAvatarStarted,
    required TResult orElse(),
  }) {
    if (addAvatarStarted != null) {
      return addAvatarStarted(this);
    }
    return orElse();
  }
}

abstract class _AddAvatarStarted implements AddAvatarEvent {
  const factory _AddAvatarStarted(final UniqueId avatarId) =
      _$AddAvatarStartedImpl;

  @override
  UniqueId get avatarId;
  @override
  @JsonKey(ignore: true)
  _$$AddAvatarStartedImplCopyWith<_$AddAvatarStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddAvatarState {
  UniqueId get avatarId => throw _privateConstructorUsedError;
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
      {UniqueId avatarId,
      Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption});
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
    Object? avatarId = null,
    Object? addFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      addFailureOrSuccessOption: null == addFailureOrSuccessOption
          ? _value.addFailureOrSuccessOption
          : addFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
    ) as $Val);
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
      {UniqueId avatarId,
      Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption});
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
    Object? avatarId = null,
    Object? addFailureOrSuccessOption = null,
  }) {
    return _then(_$AddAvatarStateImpl(
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      {required this.avatarId, required this.addFailureOrSuccessOption});

  @override
  final UniqueId avatarId;
  @override
  final Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption;

  @override
  String toString() {
    return 'AddAvatarState(avatarId: $avatarId, addFailureOrSuccessOption: $addFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAvatarStateImpl &&
            (identical(other.avatarId, avatarId) ||
                other.avatarId == avatarId) &&
            (identical(other.addFailureOrSuccessOption,
                    addFailureOrSuccessOption) ||
                other.addFailureOrSuccessOption == addFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, avatarId, addFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAvatarStateImplCopyWith<_$AddAvatarStateImpl> get copyWith =>
      __$$AddAvatarStateImplCopyWithImpl<_$AddAvatarStateImpl>(
          this, _$identity);
}

abstract class _AddAvatarState implements AddAvatarState {
  const factory _AddAvatarState(
      {required final UniqueId avatarId,
      required final Option<Either<AvatarFailure, Unit>>
          addFailureOrSuccessOption}) = _$AddAvatarStateImpl;

  @override
  UniqueId get avatarId;
  @override
  Option<Either<AvatarFailure, Unit>> get addFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$AddAvatarStateImplCopyWith<_$AddAvatarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
