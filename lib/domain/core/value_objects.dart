import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:FantasyE/domain/core/errors.dart';
import 'package:FantasyE/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const UniqueId._(this.value);

  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  // Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    return UniqueId._(
      right(uniqueIdStr),
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
