part of 'auth_users_bloc.dart';

@freezed
class AuthUsersEvent with _$AuthUsersEvent {
  const factory AuthUsersEvent.getAllUsers() = GetAllUsers;
}