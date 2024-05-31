import 'package:FantasyE/application/auth/manage_account/manage_account_bloc.dart';
import 'package:FantasyE/domain/auth/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:FantasyE/domain/manage_account/i_manage_account_facade.dart';
import 'package:dartz/dartz.dart';

import 'manage_account_bloc_test.mocks.dart';

@GenerateMocks([IManageAccountFacade])
void main() {
  late MockIManageAccountFacade mockManageAccountFacade;
  late ManageAccountBloc manageAccountBloc;

  setUp(() {
    mockManageAccountFacade = MockIManageAccountFacade();
    manageAccountBloc = ManageAccountBloc(mockManageAccountFacade);
  });

  tearDown(() {
    manageAccountBloc.close();
  });

  blocTest<ManageAccountBloc, ManageAccountState>(
    'emits correct state when EmailChanged is added',
    build: () => manageAccountBloc,
    act: (bloc) => bloc.add(const EmailChanged('test@example.com')),
    verify: (bloc) {
      expect(
          bloc.state.emailAddress,
          equals(
            EmailAddress('test@example.com'),
          ));
      expect(
        bloc.state.operationFailureOrSuccessOption,
        equals(none()),
      );
    },
  );
}
