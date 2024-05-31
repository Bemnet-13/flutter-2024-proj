import 'package:FantasyE/application/auth/auth_bloc.dart';
import 'package:FantasyE/domain/auth/i_auth_facade.dart';
import 'package:FantasyE/domain/auth/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  late SignupFormBloc signupFormBloc;
  late MockAuthFacade mockAuthFacade;

  mockAuthFacade = MockAuthFacade();
  signupFormBloc = SignupFormBloc(mockAuthFacade as IAuthFacade);

  tearDown(() {
    signupFormBloc.close();
  });

  blocTest<SignupFormBloc, SignupFormState>(
    'emits the new role value state when UpdateChip event is added',
    build: () => signupFormBloc,
    act: (bloc) => bloc.add(const SignupFormEvent.updateChip(2)),
    expect: () => [
      SignupFormState.initial().copyWith(roleValue: 2),
    ],
  );
  blocTest<SignupFormBloc, SignupFormState>(
    'emits the new password state when PasswordChanged event is added',
    build: () => signupFormBloc,
    act: (bloc) => bloc.add(const PasswordChanged('password123')),
    expect: () =>
        [SignupFormState.initial().copyWith(password: Password('password123'))],
  );

  blocTest<SignupFormBloc, SignupFormState>(
    'emits the new name state when NameChanged event is added',
    build: () => signupFormBloc,
    act: (bloc) => bloc.add(const NameChanged('John Doe')),
    expect: () => [SignupFormState.initial().copyWith(name: Name('John Doe'))],
  );

  blocTest<SignupFormBloc, SignupFormState>(
    'emits the new role state when ChipSelected event is added',
    build: () => signupFormBloc,
    act: (bloc) => bloc.add(const ChipSelected('PLAYER')),
    expect: () => [SignupFormState.initial().copyWith(role: Role('PLAYER'))],
  );

  blocTest<SignupFormBloc, SignupFormState>(
    'emits the new role value state when UpdateChip event is added',
    build: () => signupFormBloc,
    act: (bloc) => bloc.add(const UpdateChip(2)),
    expect: () => [SignupFormState.initial().copyWith(roleValue: 2)],
  );
}
