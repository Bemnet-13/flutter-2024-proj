import 'package:FantasyE/domain/auth/i_auth_facade.dart';
import 'package:FantasyE/domain/auth/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

part 'auth_logic_event.dart';
part 'auth_logic_state.dart';
part 'auth_logic_bloc.freezed.dart';

@injectable
class AuthLogicBloc extends Bloc<AuthLogicEvent, AuthLogicState> {
  IAuthFacade _authFacade;

  AuthLogicBloc(this._authFacade) : super(AuthLogicState.initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();
      emit(
        userOption.fold(
          () => const AuthLogicState.unauthenticated(),
          (user) {
            if (user.role.getOrCrash() == 'PLAYER') {
              return const AuthLogicState.authenticatedAsPlayer();
            } else {
              print('Handler set states for admin');
              return const AuthLogicState.authenticatedAsAdmin();
            }
          },
        ),
      );
    });
    on<LoggedOut>((event, emit) async {
      await _authFacade.logOut();
      emit(AuthLogicState.unauthenticated());
    });
    on<LoginRequestedAsAdmin>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();
      emit(
        userOption.fold(
          () => const AuthLogicState.unauthenticated(),
          (_) => const AuthLogicState.authenticatedAsAdmin(),
        ),
      );
    });
    on<LoginRequestedAsPlayer>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();
      emit(
        userOption.fold(
          () => const AuthLogicState.unauthenticated(),
          (_) => const AuthLogicState.authenticatedAsPlayer(),
        ),
      );
    });
  }
}
