import 'package:FantasyE/domain/manage_account/manage_account_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/auth/value_objects.dart';
import 'package:FantasyE/domain/manage_account/i_manage_account_facade.dart';
import 'package:dartz/dartz.dart';

part 'manage_account_event.dart';
part 'manage_account_state.dart';
part 'manage_account_bloc.freezed.dart';

@injectable
class ManageAccountBloc extends Bloc<ManageAccountEvent, ManageAccountState> {
  final IManageAccountFacade _manageAccountFacade;
  Either<ManageAccountFailure, Unit> failureOrSuccess = left(
    const ManageAccountFailure.cancelledByUser(),
  );

  ManageAccountBloc(this._manageAccountFacade)
      : super(ManageAccountState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          operationFailureOrSuccessOption: none()));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
          password: Password(event.passwordStr),
          operationFailureOrSuccessOption: none()));
    });
    on<NameChanged>((event, emit) {
      emit(state.copyWith(
          name: Name(event.nameStr), operationFailureOrSuccessOption: none()));
    });
    on<TeamNameChanged>((event, emit) {
      emit(state.copyWith(
          teamName: TeamName(event.teamNameStr),
          operationFailureOrSuccessOption: none()));
    });
    on<UserIdSet>((event, emit) {
      emit(state.copyWith(
          userId: event.userId, operationFailureOrSuccessOption: none()));
    });
    on<SuspensionStateSet>((event, emit) {
      emit(state.copyWith(
          suspensionState: event.suspensionState,
          operationFailureOrSuccessOption: none()));
    });
    on<UpdateUserAccountPressed>((event, emit) async {
      final isEmailValid = state.emailAddress.isValid();
      final isPassowrdValid = state.password.isValid();
      if (isEmailValid && isPassowrdValid) {
        emit(state.copyWith(
            isSubmitting: true, operationFailureOrSuccessOption: none()));
        failureOrSuccess = await _manageAccountFacade.updateUserAccount(
            emailAddress: state.emailAddress,
            password: state.password,
            name: state.name,
            teamName: state.teamName);
      }
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          operationFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });
    on<SuspendUserAccountPressed>((event, emit) async {
      final userId = state.userId;
      final suspensionState = state.suspensionState;
      emit(state.copyWith(
          isSubmitting: true, operationFailureOrSuccessOption: none()));
      failureOrSuccess = await _manageAccountFacade.suspendUserAccount(
          userId: userId, suspensionState: suspensionState);
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          operationFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });
    on<DeleteUserAccountPressed>((event, emit) async {
      final userId = state.userId;
      emit(state.copyWith(
          isSubmitting: true, operationFailureOrSuccessOption: none()));
      failureOrSuccess =
          await _manageAccountFacade.deleteUserAccount(userId: userId);
      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          operationFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });
  }
}
