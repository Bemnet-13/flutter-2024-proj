import 'package:FantasyE/domain/auth/user.dart';
import 'package:FantasyE/domain/manage_account/i_manage_account_facade.dart';
import 'package:FantasyE/domain/manage_account/manage_account_failure.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_users_event.dart';
part 'auth_users_state.dart';
part 'auth_users_bloc.freezed.dart';

@injectable
class AuthUsersBloc extends Bloc<AuthUsersEvent, AuthUsersState> {
  IManageAccountFacade iManageAccountFacade;
  AuthUsersBloc(this.iManageAccountFacade)
      : super(const AuthUsersState.initial()) {
    on<GetAllUsers>((event, emit) async {
      emit(const AuthUsersState.loadInProgress());
      await iManageAccountFacade.getAllUsers().then(
        (value) {
          value.fold(
            (f) => emit(AuthUsersState.loadFailure(f)),
            (r) => emit(AuthUsersState.loadSuccess(r)),
          );
        },
      );
    });
  }
}
