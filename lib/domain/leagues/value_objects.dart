import 'package:dartz/dartz.dart';
import 'package:FantasyE/domain/core/errors.dart';
import 'package:kt_dart/collection.dart';
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/core/value_validators.dart';

class LeagueName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LeagueName(String input) {
    return LeagueName._(
      validateStringNotEmpty(input),
    );
  }

  bool isValid() => value.isRight();

  const LeagueName._(this.value);

  @override
  // TODO: implement props
  List<Object?> get props => [value];
}

class MemberId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MemberId(String input) {
    return MemberId._(
      validateStringNotEmpty(input),
    );
  }

  const MemberId._(this.value);

  @override
  // TODO: implement props
  List<Object?> get props => [value];
}

class ListVO<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory ListVO(KtList<T> input) {
    return ListVO._(
      validateListNotEmpty(input),
    );
  }

  const ListVO._(this.value);

  KtList<T> getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  @override
  // TODO: implement props
  List<Object?> get props => [value];
}

// Add a simple validator for lists that should not be empty.
Either<ValueFailure<KtList<T>>, KtList<T>> validateListNotEmpty<T>(
    KtList<T> input) {
  if (input.isEmpty()) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}
