import 'package:FantasyE/domain/auth/i_auth_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_logic_event.dart';
part 'auth_logic_state.dart';
part 'auth_logic_bloc.freezed.dart';

@injectable
class AuthLogicBloc extends Bloc<AuthLogicEvent, AuthLogicState> {
  final IAuthFacade _authFacade;

  AuthLogicBloc(this._authFacade) : super(const AuthLogicState.initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();
      emit(
        userOption.fold(
          () => const AuthLogicState.unauthenticated(),
          (user) {
            if (user.role.getOrCrash() == 'PLAYER') {
              return const AuthLogicState.authenticatedAsPlayer();
            } else {
              return const AuthLogicState.authenticatedAsAdmin();
            }
          },
        ),
      );
    });
    on<LoggedOut>((event, emit) async {
      await _authFacade.logOut();
      emit(const AuthLogicState.unauthenticated());
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
