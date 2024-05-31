// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Avatar {
  UniqueId get id => throw _privateConstructorUsedError;
  AvatarName get avatarName => throw _privateConstructorUsedError;
  AvatarScore get avatarScore => throw _privateConstructorUsedError;
  AvatarClub get avatarClub => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AvatarCopyWith<Avatar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarCopyWith<$Res> {
  factory $AvatarCopyWith(Avatar value, $Res Function(Avatar) then) =
      _$AvatarCopyWithImpl<$Res, Avatar>;
  @useResult
  $Res call(
      {UniqueId id,
      AvatarName avatarName,
      AvatarScore avatarScore,
      AvatarClub avatarClub});
}

/// @nodoc
class _$AvatarCopyWithImpl<$Res, $Val extends Avatar>
    implements $AvatarCopyWith<$Res> {
  _$AvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarName = null,
    Object? avatarScore = null,
    Object? avatarClub = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as AvatarName,
      avatarScore: null == avatarScore
          ? _value.avatarScore
          : avatarScore // ignore: cast_nullable_to_non_nullable
              as AvatarScore,
      avatarClub: null == avatarClub
          ? _value.avatarClub
          : avatarClub // ignore: cast_nullable_to_non_nullable
              as AvatarClub,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarImplCopyWith<$Res> implements $AvatarCopyWith<$Res> {
  factory _$$AvatarImplCopyWith(
          _$AvatarImpl value, $Res Function(_$AvatarImpl) then) =
      __$$AvatarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      AvatarName avatarName,
      AvatarScore avatarScore,
      AvatarClub avatarClub});
}

/// @nodoc
class __$$AvatarImplCopyWithImpl<$Res>
    extends _$AvatarCopyWithImpl<$Res, _$AvatarImpl>
    implements _$$AvatarImplCopyWith<$Res> {
  __$$AvatarImplCopyWithImpl(
      _$AvatarImpl _value, $Res Function(_$AvatarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarName = null,
    Object? avatarScore = null,
    Object? avatarClub = null,
  }) {
    return _then(_$AvatarImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as AvatarName,
      avatarScore: null == avatarScore
          ? _value.avatarScore
          : avatarScore // ignore: cast_nullable_to_non_nullable
              as AvatarScore,
      avatarClub: null == avatarClub
          ? _value.avatarClub
          : avatarClub // ignore: cast_nullable_to_non_nullable
              as AvatarClub,
    ));
  }
}

/// @nodoc

class _$AvatarImpl with DiagnosticableTreeMixin implements _Avatar {
  const _$AvatarImpl(
      {required this.id,
      required this.avatarName,
      required this.avatarScore,
      required this.avatarClub});

  @override
  final UniqueId id;
  @override
  final AvatarName avatarName;
  @override
  final AvatarScore avatarScore;
  @override
  final AvatarClub avatarClub;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Avatar(id: $id, avatarName: $avatarName, avatarScore: $avatarScore, avatarClub: $avatarClub)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Avatar'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('avatarName', avatarName))
      ..add(DiagnosticsProperty('avatarScore', avatarScore))
      ..add(DiagnosticsProperty('avatarClub', avatarClub));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarName, avatarName) ||
                other.avatarName == avatarName) &&
            (identical(other.avatarScore, avatarScore) ||
                other.avatarScore == avatarScore) &&
            (identical(other.avatarClub, avatarClub) ||
                other.avatarClub == avatarClub));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, avatarName, avatarScore, avatarClub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarImplCopyWith<_$AvatarImpl> get copyWith =>
      __$$AvatarImplCopyWithImpl<_$AvatarImpl>(this, _$identity);
}

abstract class _Avatar implements Avatar {
  const factory _Avatar(
      {required final UniqueId id,
      required final AvatarName avatarName,
      required final AvatarScore avatarScore,
      required final AvatarClub avatarClub}) = _$AvatarImpl;

  @override
  UniqueId get id;
  @override
  AvatarName get avatarName;
  @override
  AvatarScore get avatarScore;
  @override
  AvatarClub get avatarClub;
  @override
  @JsonKey(ignore: true)
  _$$AvatarImplCopyWith<_$AvatarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
