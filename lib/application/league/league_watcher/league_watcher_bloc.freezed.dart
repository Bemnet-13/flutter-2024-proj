// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeagueWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLeagues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLeagues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLeagues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLeagues value) getAllLeagues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLeagues value)? getAllLeagues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLeagues value)? getAllLeagues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueWatcherEventCopyWith<$Res> {
  factory $LeagueWatcherEventCopyWith(
          LeagueWatcherEvent value, $Res Function(LeagueWatcherEvent) then) =
      _$LeagueWatcherEventCopyWithImpl<$Res, LeagueWatcherEvent>;
}

/// @nodoc
class _$LeagueWatcherEventCopyWithImpl<$Res, $Val extends LeagueWatcherEvent>
    implements $LeagueWatcherEventCopyWith<$Res> {
  _$LeagueWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllLeaguesImplCopyWith<$Res> {
  factory _$$GetAllLeaguesImplCopyWith(
          _$GetAllLeaguesImpl value, $Res Function(_$GetAllLeaguesImpl) then) =
      __$$GetAllLeaguesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllLeaguesImplCopyWithImpl<$Res>
    extends _$LeagueWatcherEventCopyWithImpl<$Res, _$GetAllLeaguesImpl>
    implements _$$GetAllLeaguesImplCopyWith<$Res> {
  __$$GetAllLeaguesImplCopyWithImpl(
      _$GetAllLeaguesImpl _value, $Res Function(_$GetAllLeaguesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllLeaguesImpl
    with DiagnosticableTreeMixin
    implements GetAllLeagues {
  const _$GetAllLeaguesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeagueWatcherEvent.getAllLeagues()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LeagueWatcherEvent.getAllLeagues'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllLeaguesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLeagues,
  }) {
    return getAllLeagues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLeagues,
  }) {
    return getAllLeagues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLeagues,
    required TResult orElse(),
  }) {
    if (getAllLeagues != null) {
      return getAllLeagues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLeagues value) getAllLeagues,
  }) {
    return getAllLeagues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLeagues value)? getAllLeagues,
  }) {
    return getAllLeagues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLeagues value)? getAllLeagues,
    required TResult orElse(),
  }) {
    if (getAllLeagues != null) {
      return getAllLeagues(this);
    }
    return orElse();
  }
}

abstract class GetAllLeagues implements LeagueWatcherEvent {
  const factory GetAllLeagues() = _$GetAllLeaguesImpl;
}

/// @nodoc
mixin _$LeagueWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<League> leagues) loadSuccess,
    required TResult Function(LeagueFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<League> leagues)? loadSuccess,
    TResult? Function(LeagueFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<League> leagues)? loadSuccess,
    TResult Function(LeagueFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueWatcherStateCopyWith<$Res> {
  factory $LeagueWatcherStateCopyWith(
          LeagueWatcherState value, $Res Function(LeagueWatcherState) then) =
      _$LeagueWatcherStateCopyWithImpl<$Res, LeagueWatcherState>;
}

/// @nodoc
class _$LeagueWatcherStateCopyWithImpl<$Res, $Val extends LeagueWatcherState>
    implements $LeagueWatcherStateCopyWith<$Res> {
  _$LeagueWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$LeagueWatcherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeagueWatcherState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LeagueWatcherState.initial'));
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
    required TResult Function() loadInProgress,
    required TResult Function(List<League> leagues) loadSuccess,
    required TResult Function(LeagueFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<League> leagues)? loadSuccess,
    TResult? Function(LeagueFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<League> leagues)? loadSuccess,
    TResult Function(LeagueFailure failure)? loadFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LeagueWatcherState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$LeagueWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl
    with DiagnosticableTreeMixin
    implements LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeagueWatcherState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LeagueWatcherState.loadInProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<League> leagues) loadSuccess,
    required TResult Function(LeagueFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<League> leagues)? loadSuccess,
    TResult? Function(LeagueFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<League> leagues)? loadSuccess,
    TResult Function(LeagueFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements LeagueWatcherState {
  const factory LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<League> leagues});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$LeagueWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagues = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == leagues
          ? _value._leagues
          : leagues // ignore: cast_nullable_to_non_nullable
              as List<League>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccessImpl(final List<League> leagues) : _leagues = leagues;

  final List<League> _leagues;
  @override
  List<League> get leagues {
    if (_leagues is EqualUnmodifiableListView) return _leagues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leagues);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeagueWatcherState.loadSuccess(leagues: $leagues)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LeagueWatcherState.loadSuccess'))
      ..add(DiagnosticsProperty('leagues', leagues));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality().equals(other._leagues, _leagues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_leagues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<League> leagues) loadSuccess,
    required TResult Function(LeagueFailure failure) loadFailure,
  }) {
    return loadSuccess(leagues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<League> leagues)? loadSuccess,
    TResult? Function(LeagueFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(leagues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<League> leagues)? loadSuccess,
    TResult Function(LeagueFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(leagues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements LeagueWatcherState {
  const factory LoadSuccess(final List<League> leagues) = _$LoadSuccessImpl;

  List<League> get leagues;
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LeagueFailure failure});

  $LeagueFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$LeagueWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as LeagueFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueFailureCopyWith<$Res> get failure {
    return $LeagueFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailureImpl(this.failure);

  @override
  final LeagueFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeagueWatcherState.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LeagueWatcherState.loadFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<League> leagues) loadSuccess,
    required TResult Function(LeagueFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<League> leagues)? loadSuccess,
    TResult? Function(LeagueFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<League> leagues)? loadSuccess,
    TResult Function(LeagueFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadInProgress value)? loadInProgress,
    TResult? Function(LoadSuccess value)? loadSuccess,
    TResult? Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements LeagueWatcherState {
  const factory LoadFailure(final LeagueFailure failure) = _$LoadFailureImpl;

  LeagueFailure get failure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
