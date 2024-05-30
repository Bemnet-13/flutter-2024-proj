import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
<<<<<<< HEAD
  const factory ValueFailure.invalidRole({
    required T failedValue,
  }) = InvalidRole<T>;
}
=======
  const factory ValueFailure.invalidPlayerName({
    required T failedValue,
  }) = InvalidPlayerName<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;
    const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  
}
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b
