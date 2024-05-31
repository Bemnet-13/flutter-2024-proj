part of 'manage_account_bloc.dart';

@freezed
class ManageAccountState with _$ManageAccountState {
  const factory ManageAccountState({
    required EmailAddress emailAddress,
    required Password password,
    required Name name,
    required Role role,
    required UniqueId id,
    required TeamName teamName,
    required bool showErrorMessages,
    required bool suspensionState,
    required bool isSubmitting,
    required Option<Either<ManageAccountFailure, Unit>>
        operationFailureOrSuccessOption,
  }) = _ManageAccountState;

  factory ManageAccountState.initial() => ManageAccountState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      name: Name(""),
      role: Role('PLAYER'),
      id: UniqueId.fromUniqueString("_"),
      teamName: TeamName(""),
      suspensionState: false,
      showErrorMessages: false,
      isSubmitting: false,
      operationFailureOrSuccessOption: none());
}
