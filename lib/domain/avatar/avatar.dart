import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:FantasyE/domain/core/entity.dart';
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';
part 'avatar.freezed.dart';

@freezed
abstract class Avatar with _$Avatar implements IEntity {
  const factory Avatar({
    required UniqueId id,
    required AvatarName avatarName,
    required AvatarScore avatarScore,
    required AvatarClub avatarClub,
  }) = _Avatar;

  factory Avatar.empty() => Avatar(
        id: UniqueId(),
        avatarName: AvatarName(''),
        avatarScore: AvatarScore(''),
        avatarClub: AvatarClub(''),
      );
}
