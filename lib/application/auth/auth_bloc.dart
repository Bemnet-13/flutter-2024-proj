import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class SignupFormBloc extends Bloc<SignupFormEvent, SignupFormState> {
  final IAuthFacade _authFacade;

  SignupFormBloc(this._authFacade) : super(SignupFormState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          authFailureOrSuccessOption: none()));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
          password: Password(event.passwordStr),
          authFailureOrSuccessOption: none()));
    });
    on<ChipSelected>((event, emit) {
      emit(state.copyWith(
          role: Role(event.role), authFailureOrSuccessOption: none()));
    });
    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      final isEmailValid = state.emailAddress.isValid();
      final isPassowrdValid = state.password.isValid();

      if (isEmailValid && isPassowrdValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));
        await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
            role: state.role);
        emit(state.copyWith(
            showErrorMessages: true, authFailureOrSuccessOption: none()));
      }
      emit(state.copyWith(
          showErrorMessages: true, authFailureOrSuccessOption: none()));
    });
  }
}

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade _authFacade;

  LoginFormBloc(this._authFacade) : super(LoginFormState.initial()) {
    on<EmailChangedInLogin>((event, emit) {
      emit(state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          authFailureOrSuccessOption: none()));
    });
    on<PasswordChangedInLogin>((event, emit) {
      emit(state.copyWith(
          password: Password(event.passwordStr),
          authFailureOrSuccessOption: none()));
    });
    on<LoginWithEmailAndPasswordPressed>((event, emit) async {
      final isEmailValid = state.emailAddress.isValid();
      final isPassowrdValid = state.password.isValid();

      if (isEmailValid && isPassowrdValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));

        final failureOrSuccess = await _authFacade.loginWithEmailAndPassword(
            emailAddress: state.emailAddress, password: state.password);
        emit(state.copyWith(
            showErrorMessages: true, authFailureOrSuccessOption: none()));
      }
      emit(state.copyWith(
          showErrorMessages: true, authFailureOrSuccessOption: none()));
    });
  }
}
