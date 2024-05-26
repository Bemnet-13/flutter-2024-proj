import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
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
    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      final isEmailValid = state.emailAddress.isValid();
      final isPassowrdValid = state.password.isValid();

      if (isEmailValid && isPassowrdValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));

        final failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress, password: state.password);
        emit(state.copyWith(
            showErrorMessages: true, authFailureOrSuccessOption: none()));
      }
      emit(state.copyWith(
          showErrorMessages: true, authFailureOrSuccessOption: none()));
    });
    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      final isEmailValid = state.emailAddress.isValid();
      final isPassowrdValid = state.password.isValid();

      if (isEmailValid && isPassowrdValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));

        final failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress, password: state.password);
        emit(state.copyWith(
            showErrorMessages: true, authFailureOrSuccessOption: none()));
      }
      emit(state.copyWith(
          showErrorMessages: true, authFailureOrSuccessOption: none()));
    });
    on<SignInWithGooglePressed>((event, emit) async {
      emit(state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none()));
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: Some(failureOrSuccess)));
    });
  }
}
