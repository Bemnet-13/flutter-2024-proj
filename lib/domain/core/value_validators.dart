import 'package:dartz/dartz.dart';
import './failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

<<<<<<< HEAD
Either<ValueFailure<String>, String> validateRole(String input) {
  if (input == 'PLAYER' || input == 'ADMIN') {
    return right(input);
  } else {
    return left(ValueFailure.invalidRole(failedValue: input));
  }
}
=======
Either<ValueFailure<String>, String> validatePlayerName(String input){
  if (input.length >= 20){
    return right(input);
  } else {
    return left(ValueFailure.invalidPlayerName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
