part of 'auth_bloc.dart';

@freezed
class SignupFormState with _$SignupFormState {
  const factory SignupFormState({
    required EmailAddress emailAddress,
    required Password password,
    required Role role,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignupFormState;

  factory SignupFormState.initial() => SignupFormState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      role: Role('PLAYER'),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none());
}

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none());
}