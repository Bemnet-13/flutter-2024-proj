import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/application/auth/auth_form/auth_bloc.dart';
import 'package:FantasyE/domain/auth/value_objects.dart';
import '../auth_logic/auth_logic_bloc_test.mocks.dart';
// import 'auth_bloc_test.mocks.dart';

void main() {
  late MockIAuthFacade mockAuthFacade;
  late LoginFormBloc loginFormBloc;

  setUp(() {
    mockAuthFacade = MockIAuthFacade();
    loginFormBloc = LoginFormBloc(mockAuthFacade);
  });

  tearDown(() {
    loginFormBloc.close();
  });

  test('initial state is LoginFormState.initial()', () {
    expect(loginFormBloc.state, equals(LoginFormState.initial()));
  });

  blocTest<LoginFormBloc, LoginFormState>(
    'emits [LoginFormState] with updated email when EmailChangedInLogin is added',
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
    'emits [LoginFormState] with updated password when PasswordChangedInLogin is added',
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

  blocTest<LoginFormBloc, LoginFormState>(
    'emits [LoginFormState] with updated role when RoleSelected is added',
    build: () => loginFormBloc,
    act: (bloc) => bloc.add(const LoginFormEvent.roleSelected('ADMIN')),
    expect: () => [
      LoginFormState.initial().copyWith(
        role: Role('ADMIN'),
        authFailureOrSuccessOption: none(),
      ),
    ],
  );

  blocTest<LoginFormBloc, LoginFormState>(
    'emits [LoginFormState] with isSubmitting true and then false when LoginWithEmailAndPasswordPressed is added',
    build: () {
      when(mockAuthFacade.loginWithEmailAndPassword(
        emailAddress: anyNamed('emailAddress'),
        password: anyNamed('password'),
        role: anyNamed('role'),
      )).thenAnswer((_) async => right(unit));
      return loginFormBloc;
    },
    act: (bloc) {
      bloc.add(const LoginFormEvent.emailChangedInLogin('test@example.com'));
      bloc.add(const LoginFormEvent.passwordChangedInLogin('password123'));
      bloc.add(const LoginFormEvent.roleSelected('ADMIN'));
      bloc.add(const LoginFormEvent.loginWithEmailAndPasswordPressed());
    },
    expect: () => [
      LoginFormState.initial().copyWith(
        emailAddress: EmailAddress('test@example.com'),
        authFailureOrSuccessOption: none(),
      ),
      LoginFormState.initial().copyWith(
        emailAddress: EmailAddress('test@example.com'),
        password: Password('password123'),
        authFailureOrSuccessOption: none(),
      ),
      LoginFormState.initial().copyWith(
        emailAddress: EmailAddress('test@example.com'),
        password: Password('password123'),
        role: Role('ADMIN'),
        authFailureOrSuccessOption: none(),
      ),
      LoginFormState.initial().copyWith(
        emailAddress: EmailAddress('test@example.com'),
        password: Password('password123'),
        role: Role('ADMIN'),
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ),
      LoginFormState.initial().copyWith(
        emailAddress: EmailAddress('test@example.com'),
        password: Password('password123'),
        role: Role('ADMIN'),
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: some(right(unit)),
      ),
    ],
  );
}
