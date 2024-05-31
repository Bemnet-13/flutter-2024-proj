part of 'auth_logic_bloc.dart';

@freezed
class AuthLogicEvent with _$AuthLogicEvent {
  const factory AuthLogicEvent.loggedOut() = LoggedOut;
  const factory AuthLogicEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthLogicEvent.loginRequestedAsAdmin() = LoginRequestedAsAdmin;
  const factory AuthLogicEvent.loginRequestedAsPlayer() = LoginRequestedAsPlayer;
}