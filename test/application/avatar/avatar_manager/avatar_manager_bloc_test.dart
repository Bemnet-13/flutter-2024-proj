import 'package:FantasyE/application/avatar/avatar_manager/avatar_manager_bloc.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAvatarRepository extends Mock implements IAvatarRepository {}

void main() {
  late AvatarManagerBloc avatarManagerBloc;
  late MockAvatarRepository mockAvatarRepository;

  setUp(() {
    mockAvatarRepository = MockAvatarRepository();
    avatarManagerBloc = AvatarManagerBloc(mockAvatarRepository);
  });
  setUpAll(() {
    registerFallbackValue(Avatar(
        id: UniqueId(),
        avatarName: AvatarName('input'),
        avatarScore: AvatarScore('input'),
        avatarClub: AvatarClub('input')));
  });
  tearDown(() {
    avatarManagerBloc.close();
  });

  test('initial state is AvatarManagerState.initial()', () {
    expect(avatarManagerBloc.state, AvatarManagerState.initial());
  });

  blocTest<AvatarManagerBloc, AvatarManagerState>(
    'emits [AvatarManagerState with updated name] when NameChanged is added',
    build: () => avatarManagerBloc,
    act: (bloc) => bloc.add(const NameChanged('New Avatar Name')),
    expect: () => [
      AvatarManagerState.initial().copyWith(
        avatarName: AvatarName('New Avatar Name'),
        operationFailureOrSuccess: none(),
      ),
    ],
  );
}
