import 'package:FantasyE/domain/auth/value_objects.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:FantasyE/application/auth/auth_users/auth_users_bloc.dart';
import 'package:FantasyE/domain/auth/user.dart';
import 'package:FantasyE/domain/manage_account/i_manage_account_facade.dart';

import 'auth_users_bloc_test.mocks.dart';

@GenerateMocks([IManageAccountFacade])
void main() {
  late MockIManageAccountFacade mockManageAccountFacade;
  late AuthUsersBloc authUsersBloc;

  setUp(() {
    mockManageAccountFacade = MockIManageAccountFacade();
    authUsersBloc = AuthUsersBloc(mockManageAccountFacade);
  });

  tearDown(() {
    authUsersBloc.close();
  });

  test('initial state is AuthUsersState.initial()', () {
    expect(authUsersBloc.state, const AuthUsersState.initial());
  });

  blocTest<AuthUsersBloc, AuthUsersState>(
    'emits [loadInProgress, loadSuccess] when GetAllUsers is added and data is retrieved successfully',
    build: () {
      when(mockManageAccountFacade.getAllUsers()).thenAnswer(
        (_) async => right([
          UserDetails(
            name: Name('Test User'),
            emailAddress: EmailAddress('test@example.com'),
            role: Role('PLAYER'),
            id: UniqueId(),
            isSuspended: false,
          ),
        ]),
      );
      return authUsersBloc;
    },
    act: (bloc) => bloc.add(const GetAllUsers()),
    expect: () {
      return [
        const AuthUsersState.loadInProgress(),
        predicate<AuthUsersState>((state) {
          return state is AuthUsersState;
        }),
      ];
    },
  );
}
