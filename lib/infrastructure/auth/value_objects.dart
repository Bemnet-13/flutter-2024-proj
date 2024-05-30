import 'package:dartz/dartz.dart';
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/core/value_validators.dart';

class EmailAddress implements ValueObject{
  final Either<ValueFailure<String>, String> value;

  const EmailAddress._(this.value);

  // Factory constructor for creating an instance of EmailAddress
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
}

class Password implements ValueObject{
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  // Factory constructor for creating an instance of EmailAddress
  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

}
