import 'package:FantasyE/domain/auth/value_objects.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId id,
    required Role role
  }) = _User;
}
