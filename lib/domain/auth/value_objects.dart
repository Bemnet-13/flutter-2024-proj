import 'package:dartz/dartz.dart';
<<<<<<< HEAD
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';
import '../../domain/core/errors.dart';
=======
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/core/value_validators.dart';
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b

class EmailAddress implements ValueObject {
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  String getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  // Factory constructor for creating an instance of EmailAddress
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
}

class Password implements ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);
  bool isValid() => value.isRight();

  String getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  // Factory constructor for creating an instance of EmailAddress
  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }
}

class Role implements ValueObject {
  final Either<ValueFailure<String>, String> value;
  const Role._(this.value);

  bool isValid() => value.isRight();

  String getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  factory Role(String input) {
    return Role._(
      validateRole(input),
    );
  }
}
