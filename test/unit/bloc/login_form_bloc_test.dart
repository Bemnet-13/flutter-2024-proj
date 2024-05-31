import 'package:FantasyE/application/auth/auth_bloc.dart';
import 'package:FantasyE/domain/auth/i_auth_facade.dart';
import 'package:FantasyE/domain/auth/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  late LoginFormBloc loginFormBloc;
  late MockAuthFacade mockAuthFacade;

  mockAuthFacade = MockAuthFacade();
  loginFormBloc = LoginFormBloc(mockAuthFacade as IAuthFacade);

  tearDown(() {
    loginFormBloc.close();
  });

  blocTest<LoginFormBloc, LoginFormState>(
    'emits the updated role state when RoleSelected event is added',
    build: () => loginFormBloc,
    act: (bloc) => bloc.add(const LoginFormEvent.roleSelected('PLAYER')),
    expect: () => [
      LoginFormState.initial().copyWith(
        role: Role('PLAYER'),
        authFailureOrSuccessOption: none(),
      ),
    ],
  );

  blocTest<LoginFormBloc, LoginFormState>(
    'emits the updated email state when EmailChangedInLogin event is added',
    build: () => loginFormBloc,
    act: (bloc) =>
        bloc.add(const LoginFormEvent.emailChangedInLogin('test@example.com')),
    expect: () => [
      LoginFormState.initial().copyWith(
        emailAddress: EmailAddress('test@example.com'),
        authFailureOrSuccessOption: none(),
      ),
    ],
  );

  blocTest<LoginFormBloc, LoginFormState>(
    'emits the updated password state when PasswordChangedInLogin event is added',
    build: () => loginFormBloc,
    act: (bloc) =>
        bloc.add(const LoginFormEvent.passwordChangedInLogin('password123')),
    expect: () => [
      LoginFormState.initial().copyWith(
        password: Password('password123'),
        authFailureOrSuccessOption: none(),
      ),
    ],
  );
}
