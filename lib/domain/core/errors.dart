<<<<<<< HEAD
import './failures.dart';
=======
import 'package:FantasyE/domain/core/failures.dart';
>>>>>>> 5009362b5ed775a36bee095b36cefdb1b8c3204b

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);
  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating';
    return Error.safeToString('$explanation T Failure was : $valueFailure');
  }
}
