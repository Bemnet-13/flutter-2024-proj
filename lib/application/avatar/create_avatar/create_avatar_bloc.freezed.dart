// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateAvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int score) scoreChanged,
    required TResult Function() created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int score)? scoreChanged,
    TResult? Function()? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int score)? scoreChanged,
    TResult Function()? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ClubChanged value) clubChanged,
    required TResult Function(_ScoreChanged value) scoreChanged,
    required TResult Function(_Created value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ClubChanged value)? clubChanged,
    TResult? Function(_ScoreChanged value)? scoreChanged,
    TResult? Function(_Created value)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ClubChanged value)? clubChanged,
    TResult Function(_ScoreChanged value)? scoreChanged,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAvatarEventCopyWith<$Res> {
  factory $CreateAvatarEventCopyWith(
          CreateAvatarEvent value, $Res Function(CreateAvatarEvent) then) =
      _$CreateAvatarEventCopyWithImpl<$Res, CreateAvatarEvent>;
}

/// @nodoc
class _$CreateAvatarEventCopyWithImpl<$Res, $Val extends CreateAvatarEvent>
    implements $CreateAvatarEventCopyWith<$Res> {
  _$CreateAvatarEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateAvatarEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'CreateAvatarEvent.initialized(initialAvatarOption: $initialAvatarOption)';
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
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int score) scoreChanged,
    required TResult Function() created,
  }) {
    return initialized(initialAvatarOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int score)? scoreChanged,
    TResult? Function()? created,
  }) {
    return initialized?.call(initialAvatarOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int score)? scoreChanged,
    TResult Function()? created,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ClubChanged value) clubChanged,
    required TResult Function(_ScoreChanged value) scoreChanged,
    required TResult Function(_Created value) created,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ClubChanged value)? clubChanged,
    TResult? Function(_ScoreChanged value)? scoreChanged,
    TResult? Function(_Created value)? created,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ClubChanged value)? clubChanged,
    TResult Function(_ScoreChanged value)? scoreChanged,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CreateAvatarEvent {
  const factory _Initialized(final Option<Avatar> initialAvatarOption) =
      _$InitializedImpl;

  Option<Avatar> get initialAvatarOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CreateAvatarEventCopyWithImpl<$Res, _$NameChangedImpl>
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

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'CreateAvatarEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int score) scoreChanged,
    required TResult Function() created,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int score)? scoreChanged,
    TResult? Function()? created,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int score)? scoreChanged,
    TResult Function()? created,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ClubChanged value) clubChanged,
    required TResult Function(_ScoreChanged value) scoreChanged,
    required TResult Function(_Created value) created,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ClubChanged value)? clubChanged,
    TResult? Function(_ScoreChanged value)? scoreChanged,
    TResult? Function(_Created value)? created,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ClubChanged value)? clubChanged,
    TResult Function(_ScoreChanged value)? scoreChanged,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CreateAvatarEvent {
  const factory _NameChanged(final String nameStr) = _$NameChangedImpl;

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
    extends _$CreateAvatarEventCopyWithImpl<$Res, _$ClubChangedImpl>
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

class _$ClubChangedImpl implements _ClubChanged {
  const _$ClubChangedImpl(this.clubStr);

  @override
  final String clubStr;

  @override
  String toString() {
    return 'CreateAvatarEvent.clubChanged(clubStr: $clubStr)';
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
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int score) scoreChanged,
    required TResult Function() created,
  }) {
    return clubChanged(clubStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int score)? scoreChanged,
    TResult? Function()? created,
  }) {
    return clubChanged?.call(clubStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int score)? scoreChanged,
    TResult Function()? created,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ClubChanged value) clubChanged,
    required TResult Function(_ScoreChanged value) scoreChanged,
    required TResult Function(_Created value) created,
  }) {
    return clubChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ClubChanged value)? clubChanged,
    TResult? Function(_ScoreChanged value)? scoreChanged,
    TResult? Function(_Created value)? created,
  }) {
    return clubChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ClubChanged value)? clubChanged,
    TResult Function(_ScoreChanged value)? scoreChanged,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (clubChanged != null) {
      return clubChanged(this);
    }
    return orElse();
  }
}

abstract class _ClubChanged implements CreateAvatarEvent {
  const factory _ClubChanged(final String clubStr) = _$ClubChangedImpl;

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
  $Res call({int score});
}

/// @nodoc
class __$$ScoreChangedImplCopyWithImpl<$Res>
    extends _$CreateAvatarEventCopyWithImpl<$Res, _$ScoreChangedImpl>
    implements _$$ScoreChangedImplCopyWith<$Res> {
  __$$ScoreChangedImplCopyWithImpl(
      _$ScoreChangedImpl _value, $Res Function(_$ScoreChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
  }) {
    return _then(_$ScoreChangedImpl(
      null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScoreChangedImpl implements _ScoreChanged {
  const _$ScoreChangedImpl(this.score);

  @override
  final int score;

  @override
  String toString() {
    return 'CreateAvatarEvent.scoreChanged(score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreChangedImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreChangedImplCopyWith<_$ScoreChangedImpl> get copyWith =>
      __$$ScoreChangedImplCopyWithImpl<_$ScoreChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int score) scoreChanged,
    required TResult Function() created,
  }) {
    return scoreChanged(score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int score)? scoreChanged,
    TResult? Function()? created,
  }) {
    return scoreChanged?.call(score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int score)? scoreChanged,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (scoreChanged != null) {
      return scoreChanged(score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ClubChanged value) clubChanged,
    required TResult Function(_ScoreChanged value) scoreChanged,
    required TResult Function(_Created value) created,
  }) {
    return scoreChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ClubChanged value)? clubChanged,
    TResult? Function(_ScoreChanged value)? scoreChanged,
    TResult? Function(_Created value)? created,
  }) {
    return scoreChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ClubChanged value)? clubChanged,
    TResult Function(_ScoreChanged value)? scoreChanged,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (scoreChanged != null) {
      return scoreChanged(this);
    }
    return orElse();
  }
}

abstract class _ScoreChanged implements CreateAvatarEvent {
  const factory _ScoreChanged(final int score) = _$ScoreChangedImpl;

  int get score;
  @JsonKey(ignore: true)
  _$$ScoreChangedImplCopyWith<_$ScoreChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<$Res> {
  factory _$$CreatedImplCopyWith(
          _$CreatedImpl value, $Res Function(_$CreatedImpl) then) =
      __$$CreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<$Res>
    extends _$CreateAvatarEventCopyWithImpl<$Res, _$CreatedImpl>
    implements _$$CreatedImplCopyWith<$Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl _value, $Res Function(_$CreatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatedImpl implements _Created {
  const _$CreatedImpl();

  @override
  String toString() {
    return 'CreateAvatarEvent.created()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Avatar> initialAvatarOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String clubStr) clubChanged,
    required TResult Function(int score) scoreChanged,
    required TResult Function() created,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String clubStr)? clubChanged,
    TResult? Function(int score)? scoreChanged,
    TResult? Function()? created,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Avatar> initialAvatarOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String clubStr)? clubChanged,
    TResult Function(int score)? scoreChanged,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ClubChanged value) clubChanged,
    required TResult Function(_ScoreChanged value) scoreChanged,
    required TResult Function(_Created value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ClubChanged value)? clubChanged,
    TResult? Function(_ScoreChanged value)? scoreChanged,
    TResult? Function(_Created value)? created,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ClubChanged value)? clubChanged,
    TResult Function(_ScoreChanged value)? scoreChanged,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements CreateAvatarEvent {
  const factory _Created() = _$CreatedImpl;
}

/// @nodoc
mixin _$CreateAvatarState {
  Avatar get avatar => throw _privateConstructorUsedError;
  Option<Either<AvatarFailure, Unit>> get createFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAvatarStateCopyWith<CreateAvatarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAvatarStateCopyWith<$Res> {
  factory $CreateAvatarStateCopyWith(
          CreateAvatarState value, $Res Function(CreateAvatarState) then) =
      _$CreateAvatarStateCopyWithImpl<$Res, CreateAvatarState>;
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> createFailureOrSuccessOption});

  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class _$CreateAvatarStateCopyWithImpl<$Res, $Val extends CreateAvatarState>
    implements $CreateAvatarStateCopyWith<$Res> {
  _$CreateAvatarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? createFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      createFailureOrSuccessOption: null == createFailureOrSuccessOption
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CreateAvatarStateImplCopyWith<$Res>
    implements $CreateAvatarStateCopyWith<$Res> {
  factory _$$CreateAvatarStateImplCopyWith(_$CreateAvatarStateImpl value,
          $Res Function(_$CreateAvatarStateImpl) then) =
      __$$CreateAvatarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Avatar avatar,
      Option<Either<AvatarFailure, Unit>> createFailureOrSuccessOption});

  @override
  $AvatarCopyWith<$Res> get avatar;
}

/// @nodoc
class __$$CreateAvatarStateImplCopyWithImpl<$Res>
    extends _$CreateAvatarStateCopyWithImpl<$Res, _$CreateAvatarStateImpl>
    implements _$$CreateAvatarStateImplCopyWith<$Res> {
  __$$CreateAvatarStateImplCopyWithImpl(_$CreateAvatarStateImpl _value,
      $Res Function(_$CreateAvatarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? createFailureOrSuccessOption = null,
  }) {
    return _then(_$CreateAvatarStateImpl(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar,
      createFailureOrSuccessOption: null == createFailureOrSuccessOption
          ? _value.createFailureOrSuccessOption
          : createFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AvatarFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$CreateAvatarStateImpl implements _CreateAvatarState {
  const _$CreateAvatarStateImpl(
      {required this.avatar, required this.createFailureOrSuccessOption});

  @override
  final Avatar avatar;
  @override
  final Option<Either<AvatarFailure, Unit>> createFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateAvatarState(avatar: $avatar, createFailureOrSuccessOption: $createFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAvatarStateImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.createFailureOrSuccessOption,
                    createFailureOrSuccessOption) ||
                other.createFailureOrSuccessOption ==
                    createFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, avatar, createFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAvatarStateImplCopyWith<_$CreateAvatarStateImpl> get copyWith =>
      __$$CreateAvatarStateImplCopyWithImpl<_$CreateAvatarStateImpl>(
          this, _$identity);
}

abstract class _CreateAvatarState implements CreateAvatarState {
  const factory _CreateAvatarState(
      {required final Avatar avatar,
      required final Option<Either<AvatarFailure, Unit>>
          createFailureOrSuccessOption}) = _$CreateAvatarStateImpl;

  @override
  Avatar get avatar;
  @override
  Option<Either<AvatarFailure, Unit>> get createFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$CreateAvatarStateImplCopyWith<_$CreateAvatarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
