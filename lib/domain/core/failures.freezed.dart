// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
<<<<<<< HEAD
    required TResult Function(T failedValue) invalidRole,
=======
    required TResult Function(T failedValue) invalidPlayerName,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult? Function(T failedValue)? invalidRole,
=======
    TResult? Function(T failedValue)? invalidPlayerName,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult Function(T failedValue)? invalidRole,
=======
    TResult Function(T failedValue)? invalidPlayerName,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
<<<<<<< HEAD
    required TResult Function(InvalidRole<T> value) invalidRole,
=======
    required TResult Function(InvalidPlayerName<T> value) invalidPlayerName,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult? Function(InvalidRole<T> value)? invalidRole,
=======
    TResult? Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult Function(InvalidRole<T> value)? invalidRole,
=======
    TResult Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
<<<<<<< HEAD
    required TResult Function(T failedValue) invalidRole,
=======
    required TResult Function(T failedValue) invalidPlayerName,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult? Function(T failedValue)? invalidRole,
=======
    TResult? Function(T failedValue)? invalidPlayerName,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult Function(T failedValue)? invalidRole,
=======
    TResult Function(T failedValue)? invalidPlayerName,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
<<<<<<< HEAD
    required TResult Function(InvalidRole<T> value) invalidRole,
=======
    required TResult Function(InvalidPlayerName<T> value) invalidPlayerName,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult? Function(InvalidRole<T> value)? invalidRole,
=======
    TResult? Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult Function(InvalidRole<T> value)? invalidRole,
=======
    TResult Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> implements ShortPassword<T> {
  const _$ShortPasswordImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
<<<<<<< HEAD
    required TResult Function(T failedValue) invalidRole,
=======
    required TResult Function(T failedValue) invalidPlayerName,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult? Function(T failedValue)? invalidRole,
=======
    TResult? Function(T failedValue)? invalidPlayerName,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult Function(T failedValue)? invalidRole,
=======
    TResult Function(T failedValue)? invalidPlayerName,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
<<<<<<< HEAD
    required TResult Function(InvalidRole<T> value) invalidRole,
=======
    required TResult Function(InvalidPlayerName<T> value) invalidPlayerName,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult? Function(InvalidRole<T> value)? invalidRole,
=======
    TResult? Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult Function(InvalidRole<T> value)? invalidRole,
=======
    TResult Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPasswordImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD
abstract class _$$InvalidRoleImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidRoleImplCopyWith(_$InvalidRoleImpl<T> value,
          $Res Function(_$InvalidRoleImpl<T>) then) =
      __$$InvalidRoleImplCopyWithImpl<T, $Res>;
=======
abstract class _$$InvalidPlayerNameImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPlayerNameImplCopyWith(_$InvalidPlayerNameImpl<T> value,
          $Res Function(_$InvalidPlayerNameImpl<T>) then) =
      __$$InvalidPlayerNameImplCopyWithImpl<T, $Res>;
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
<<<<<<< HEAD
class __$$InvalidRoleImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidRoleImpl<T>>
    implements _$$InvalidRoleImplCopyWith<T, $Res> {
  __$$InvalidRoleImplCopyWithImpl(
      _$InvalidRoleImpl<T> _value, $Res Function(_$InvalidRoleImpl<T>) _then)
=======
class __$$InvalidPlayerNameImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidPlayerNameImpl<T>>
    implements _$$InvalidPlayerNameImplCopyWith<T, $Res> {
  __$$InvalidPlayerNameImplCopyWithImpl(_$InvalidPlayerNameImpl<T> _value,
      $Res Function(_$InvalidPlayerNameImpl<T>) _then)
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
<<<<<<< HEAD
    return _then(_$InvalidRoleImpl<T>(
=======
    return _then(_$InvalidPlayerNameImpl<T>(
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

<<<<<<< HEAD
class _$InvalidRoleImpl<T> implements InvalidRole<T> {
  const _$InvalidRoleImpl({required this.failedValue});
=======
class _$InvalidPlayerNameImpl<T> implements InvalidPlayerName<T> {
  const _$InvalidPlayerNameImpl({required this.failedValue});
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b

  @override
  final T failedValue;

  @override
  String toString() {
<<<<<<< HEAD
    return 'ValueFailure<$T>.invalidRole(failedValue: $failedValue)';
=======
    return 'ValueFailure<$T>.invalidPlayerName(failedValue: $failedValue)';
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
<<<<<<< HEAD
            other is _$InvalidRoleImpl<T> &&
=======
            other is _$InvalidPlayerNameImpl<T> &&
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
<<<<<<< HEAD
  _$$InvalidRoleImplCopyWith<T, _$InvalidRoleImpl<T>> get copyWith =>
      __$$InvalidRoleImplCopyWithImpl<T, _$InvalidRoleImpl<T>>(
          this, _$identity);
=======
  _$$InvalidPlayerNameImplCopyWith<T, _$InvalidPlayerNameImpl<T>>
      get copyWith =>
          __$$InvalidPlayerNameImplCopyWithImpl<T, _$InvalidPlayerNameImpl<T>>(
              this, _$identity);
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
<<<<<<< HEAD
    required TResult Function(T failedValue) invalidRole,
  }) {
    return invalidRole(failedValue);
=======
    required TResult Function(T failedValue) invalidPlayerName,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
  }) {
    return invalidPlayerName(failedValue);
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult? Function(T failedValue)? invalidRole,
  }) {
    return invalidRole?.call(failedValue);
=======
    TResult? Function(T failedValue)? invalidPlayerName,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? empty,
  }) {
    return invalidPlayerName?.call(failedValue);
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
<<<<<<< HEAD
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidRole != null) {
      return invalidRole(failedValue);
=======
    TResult Function(T failedValue)? invalidPlayerName,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    required TResult orElse(),
  }) {
    if (invalidPlayerName != null) {
      return invalidPlayerName(failedValue);
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
<<<<<<< HEAD
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return invalidRole(this);
=======
    required TResult Function(InvalidPlayerName<T> value) invalidPlayerName,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
  }) {
    return invalidPlayerName(this);
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult? Function(InvalidRole<T> value)? invalidRole,
  }) {
    return invalidRole?.call(this);
=======
    TResult? Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
  }) {
    return invalidPlayerName?.call(this);
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
<<<<<<< HEAD
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidRole != null) {
      return invalidRole(this);
=======
    TResult Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (invalidPlayerName != null) {
      return invalidPlayerName(this);
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
    }
    return orElse();
  }
}

<<<<<<< HEAD
abstract class InvalidRole<T> implements ValueFailure<T> {
  const factory InvalidRole({required final T failedValue}) =
      _$InvalidRoleImpl<T>;
=======
abstract class InvalidPlayerName<T> implements ValueFailure<T> {
  const factory InvalidPlayerName({required final T failedValue}) =
      _$InvalidPlayerNameImpl<T>;
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
<<<<<<< HEAD
  _$$InvalidRoleImplCopyWith<T, _$InvalidRoleImpl<T>> get copyWith =>
=======
  _$$InvalidPlayerNameImplCopyWith<T, _$InvalidPlayerNameImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceedingLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthImplCopyWith(_$ExceedingLengthImpl<T> value,
          $Res Function(_$ExceedingLengthImpl<T>) then) =
      __$$ExceedingLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLengthImpl<T>>
    implements _$$ExceedingLengthImplCopyWith<T, $Res> {
  __$$ExceedingLengthImplCopyWithImpl(_$ExceedingLengthImpl<T> _value,
      $Res Function(_$ExceedingLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ExceedingLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthImpl<T> implements ExceedingLength<T> {
  const _$ExceedingLengthImpl({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      __$$ExceedingLengthImplCopyWithImpl<T, _$ExceedingLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPlayerName,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPlayerName,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? empty,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPlayerName,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPlayerName<T> value) invalidPlayerName,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$ExceedingLengthImpl<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPlayerName,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) empty,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidPlayerName,
    TResult? Function(T failedValue, int max)? exceedingLength,
    TResult? Function(T failedValue)? empty,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPlayerName,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPlayerName<T> value) invalidPlayerName,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPlayerName<T> value)? invalidPlayerName,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
      throw _privateConstructorUsedError;
}
