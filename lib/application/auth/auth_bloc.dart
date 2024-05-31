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
  Either<AuthFailure, Unit> failureOrSuccess = left(const AuthFailure.cancelledByUser());

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
    on<NameChanged>((event, emit) {
      emit(state.copyWith(
          name: Name(event.nameStr), authFailureOrSuccessOption: none()));
    });
    on<ChipSelected>((event, emit) {
      emit(state.copyWith(
          role: Role(event.role), authFailureOrSuccessOption: none()));
    });
    on<UpdateChip>((event, emit) {
      emit(state.copyWith(
          roleValue: event.value, authFailureOrSuccessOption: none()));
    });
    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      final isEmailValid = state.emailAddress.isValid();
      final isPassowrdValid = state.password.isValid();

      if (isEmailValid && isPassowrdValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));
        failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
            name: state.name,
            role: state.role);
      }
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });
  }
}

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade _authFacade;
  // late Either<AuthFailure, Unit> failureOrSuccess;

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
    on<RoleSelected>((event, emit) {
      emit(state.copyWith(
          role: Role(event.roleStr), authFailureOrSuccessOption: none()));
    });
    on<LoginWithEmailAndPasswordPressed>((event, emit) async {
      final isEmailValid = state.emailAddress.isValid();
      final isPassowrdValid = state.password.isValid();

      if (isEmailValid && isPassowrdValid) {
        emit(state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none()));

        final failureOrSuccess = await _authFacade.loginWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
            role: state.role);

        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      }
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
        ),
      );
    });
  }
}