part of 'auth_users_bloc.dart';

@freezed
class AuthUsersState with _$AuthUsersState {
  const factory AuthUsersState.initial() = _Initial;
  const factory AuthUsersState.loadInProgress() = LoadInProgress;
  const factory AuthUsersState.loadSuccess(List<UserDetails> users) =
      LoadSuccess;
  const factory AuthUsersState.loadFailure(AuthFailure failure) = LoadFailure;
}
