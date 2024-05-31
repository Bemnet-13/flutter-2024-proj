import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:FantasyE/domain/auth/i_auth_facade.dart';
import 'package:FantasyE/domain/auth/user.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/auth/value_objects.dart';

import 'auth_logic_bloc_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  late MockIAuthFacade mockAuthFacade;
  late AuthLogicBloc authLogicBloc;

  setUp(() {
    mockAuthFacade = MockIAuthFacade();
    authLogicBloc = AuthLogicBloc(mockAuthFacade);
  });

  tearDown(() {
    authLogicBloc.close();
  });

  test('initial state is AuthLogicState.initial()', () {
    expect(authLogicBloc.state, const AuthLogicState.initial());
  });

  blocTest<AuthLogicBloc, AuthLogicState>(
    'emits [authenticatedAsPlayer] when AuthCheckRequested is added and user is a player',
    build: () {
      when(mockAuthFacade.getSignedInUser()).thenAnswer(
        (_) async => some(
          User(
            token: UniqueId.fromUniqueString('uniqueToken'),
            role: Role('PLAYER'),
          ),
        ),
      );
      return authLogicBloc;
    },
    act: (bloc) => bloc.add(const AuthCheckRequested()),
    expect: () => [const AuthLogicState.authenticatedAsPlayer()],
  );

  blocTest<AuthLogicBloc, AuthLogicState>(
    'emits [authenticatedAsAdmin] when AuthCheckRequested is added and user is an admin',
    build: () {
      when(mockAuthFacade.getSignedInUser()).thenAnswer(
        (_) async => some(
          User(
            token: UniqueId.fromUniqueString('uniqueToken'),
            role: Role('ADMIN'),
          ),
        ),
      );
      return authLogicBloc;
    },
    act: (bloc) => bloc.add(const AuthCheckRequested()),
    expect: () => [const AuthLogicState.authenticatedAsAdmin()],
  );

  blocTest<AuthLogicBloc, AuthLogicState>(
    'emits [unauthenticated] when AuthCheckRequested is added and no user is signed in',
    build: () {
      when(mockAuthFacade.getSignedInUser()).thenAnswer(
        (_) async => none(),
      );
      return authLogicBloc;
    },
    act: (bloc) => bloc.add(const AuthCheckRequested()),
    expect: () => [const AuthLogicState.unauthenticated()],
  );

  blocTest<AuthLogicBloc, AuthLogicState>(
    'emits [unauthenticated] when LoggedOut is added',
    build: () {
      when(mockAuthFacade.logOut()).thenAnswer(
        (_) async => Future.value(),
      );
      return authLogicBloc;
    },
    act: (bloc) => bloc.add(const LoggedOut()),
    expect: () => [const AuthLogicState.unauthenticated()],
  );

  blocTest<AuthLogicBloc, AuthLogicState>(
    'emits [authenticatedAsAdmin] when LoginRequestedAsAdmin is added and user is an admin',
    build: () {
      when(mockAuthFacade.getSignedInUser()).thenAnswer(
        (_) async => some(
          User(
            token: UniqueId.fromUniqueString('uniqueToken'),
            role: Role('ADMIN'),
          ),
        ),
      );
      return authLogicBloc;
    },
    act: (bloc) => bloc.add(const LoginRequestedAsAdmin()),
    expect: () => [const AuthLogicState.authenticatedAsAdmin()],
  );

  blocTest<AuthLogicBloc, AuthLogicState>(
    'emits [authenticatedAsPlayer] when LoginRequestedAsPlayer is added and user is a player',
    build: () {
      when(mockAuthFacade.getSignedInUser()).thenAnswer(
        (_) async => some(
          User(
            token: UniqueId.fromUniqueString('uniqueToken'),
            role: Role('PLAYER'),
          ),
        ),
      );
      return authLogicBloc;
    },
    act: (bloc) => bloc.add(const LoginRequestedAsPlayer()),
    expect: () => [const AuthLogicState.authenticatedAsPlayer()],
  );
}
