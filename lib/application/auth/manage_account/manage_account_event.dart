part of 'manage_account_bloc.dart';

@freezed
class ManageAccountEvent with _$ManageAccountEvent {
  const factory ManageAccountEvent.nameChanged(String nameStr) = NameChanged;
  const factory ManageAccountEvent.teamNameChanged(String teamNameStr) =
      TeamNameChanged;
  const factory ManageAccountEvent.emailChanged(String emailStr) = EmailChanged;
  const factory ManageAccountEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory ManageAccountEvent.userIdSet(String userId) = UserIdSet;
  const factory ManageAccountEvent.suspensionStateSet(bool suspensionState) =
      SuspensionStateSet;
  const factory ManageAccountEvent.userAccountSelected(
      UniqueId id,
      EmailAddress emailAddress,
      bool suspensionState,
      Name name,
      Role role) = UserAccountSelected;
  const factory ManageAccountEvent.updateUserAccountPressed() =
      UpdateUserAccountPressed;
  const factory ManageAccountEvent.deleteUserAccountPressed(String userId) =
      DeleteUserAccountPressed;
  const factory ManageAccountEvent.suspendUserAccountPressed(String userId) =
      SuspendUserAccountPressed;
}
