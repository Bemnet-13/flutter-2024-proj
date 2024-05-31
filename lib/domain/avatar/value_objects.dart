import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/core/value_validators.dart';

class AvatarName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  factory AvatarName(String input) {
    return AvatarName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  bool isValid() => value.isRight();

  const AvatarName._(this.value);
}

class AvatarClub extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory AvatarClub(String input) {
    return AvatarClub._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }
  bool isValid() => value.isRight();

  const AvatarClub._(this.value);
}

class AvatarScore extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory AvatarScore(String input) {
    try {
      int score = int.parse(input);
      return AvatarScore._(
        right(score),
      );
    } catch (e) {
      return AvatarScore._(left(const ValueFailure.invalidScore(failedValue: -1)));
    }
  }
  bool isValid() => value.isRight();

  const AvatarScore._(this.value);
}
