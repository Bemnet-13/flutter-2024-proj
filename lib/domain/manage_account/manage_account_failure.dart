import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_account_failure.freezed.dart';

@freezed
abstract class ManageAccountFailure with _$ManageAccountFailure {
  const factory ManageAccountFailure.cancelledByUser() = CancelledByUser;
  const factory ManageAccountFailure.serverError() = ServerError;
  const factory ManageAccountFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory ManageAccountFailure.unsuccessfulDeletion() = UnsuccessfulDeletion;
  const factory ManageAccountFailure.invalidSuspension() = InvalidSuspension;
}