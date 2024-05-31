import 'package:FantasyE/domain/auth/value_objects.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId token,
    required Role role,
    required UniqueId id
  }) = _User;
}

@freezed
abstract class UserDetails with _$UserDetails {
  const factory UserDetails({
    required UniqueId id,
    required Name name,
    required EmailAddress emailAddress,
    required Role role,
    required bool isSuspended,
  }) = _UserDetails;
}
