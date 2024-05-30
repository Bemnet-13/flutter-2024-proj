part of 'auth_bloc.dart';

@freezed
abstract class SignupFormEvent with _$SignupFormEvent {
  // Notice that these events take in "raw" unvalidated Strings
  const factory SignupFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignupFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignupFormEvent.chipSelected(String role) =
      ChipSelected;
  const factory SignupFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;

}



@freezed
abstract class LoginFormEvent with _$LoginFormEvent {
  // Notice that these events take in "raw" unvalidated Strings
  const factory LoginFormEvent.emailChangedInLogin(String emailStr) = EmailChangedInLogin;
  const factory LoginFormEvent.passwordChangedInLogin(String passwordStr) =
      PasswordChangedInLogin;
  const factory LoginFormEvent.loginWithEmailAndPasswordPressed() =
      LoginWithEmailAndPasswordPressed;
}
