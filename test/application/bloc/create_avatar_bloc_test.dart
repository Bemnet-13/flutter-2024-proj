import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/application/avatar/create_avatar/create_avatar_bloc.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'create_avatar_bloc_test.mocks.dart';

@GenerateMocks([IAvatarRepository])
void main() {
  late CreateAvatarBloc createAvatarBloc;
  late MockIAvatarRepository mockIAvatarRepository;

  setUp(() {
    mockIAvatarRepository = MockIAvatarRepository();
    createAvatarBloc = CreateAvatarBloc(mockIAvatarRepository);
  });

  tearDown(() {
    createAvatarBloc.close();
  });

  test('initial state is CreateAvatarState.initial()', () {
    expect(createAvatarBloc.state, CreateAvatarState.initial());
  });

  blocTest<CreateAvatarBloc, CreateAvatarState>(
    'emits [state with initial avatar] when initialized is called with some avatar',
    build: () => createAvatarBloc,
    act: (bloc) => bloc.add(CreateAvatarEvent.initialized(some(Avatar(
      id: UniqueId(),
      name: AvatarName('Test'),
      score: AvatarScore(0),
      club: AvatarClub('TestClub'),
    )))),
    expect: () => [
      CreateAvatarState(
        avatar: Avatar(
          id: UniqueId(),
          name: AvatarName('Test'),
          score: AvatarScore(0),
          club: AvatarClub('TestClub'),
        ),
        createFailureOrSuccessOption: none(),
      ),
    ],
  );

  blocTest<CreateAvatarBloc, CreateAvatarState>(
    'emits [state with updated name] when nameChanged is called',
    build: () => createAvatarBloc,
    act: (bloc) => bloc.add(const CreateAvatarEvent.nameChanged('NewName')),
    expect: () => [
      CreateAvatarState(
        avatar: Avatar.empty().copyWith(name: AvatarName('NewName')),
        createFailureOrSuccessOption: none(),
      ),
    ],
  );

  blocTest<CreateAvatarBloc, CreateAvatarState>(
    'emits [state with updated club] when clubChanged is called',
    build: () => createAvatarBloc,
    act: (bloc) => bloc.add(const CreateAvatarEvent.clubChanged('NewClub')),
    expect: () => [
      CreateAvatarState(
        avatar: Avatar.empty().copyWith(club: AvatarClub('NewClub')),
        createFailureOrSuccessOption: none(),
      ),
    ],
  );

  blocTest<CreateAvatarBloc, CreateAvatarState>(
    'emits [state with updated score] when scoreChanged is called',
    build: () => createAvatarBloc,
    act: (bloc) => bloc.add(const CreateAvatarEvent.scoreChanged(100)),
    expect: () => [
      CreateAvatarState(
        avatar: Avatar.empty().copyWith(score: AvatarScore(100)),
        createFailureOrSuccessOption: none(),
      ),
    ],
  );

  blocTest<CreateAvatarBloc, CreateAvatarState>(
    'emits [state with failure or success option] when created is called and avatar is valid',
    build: () => createAvatarBloc,
    setUp: () {
      when(mockIAvatarRepository.create(any))
          .thenAnswer((_) async => right(unit));
    },
    seed: () => CreateAvatarState(
      avatar: Avatar(
        id: UniqueId(),
        name: AvatarName('TestName'),
        score: AvatarScore(0),
        club: AvatarClub('TestClub'),
      ),
      createFailureOrSuccessOption: none(),
    ),
    act: (bloc) => bloc.add(const CreateAvatarEvent.created()),
    expect: () => [
      CreateAvatarState(
        avatar: Avatar(
          id: UniqueId(),
          name: AvatarName('TestName'),
          score: AvatarScore(0),
          club: AvatarClub('TestClub'),
        ),
        createFailureOrSuccessOption: some(right(unit)),
      ),
    ],
  );

  blocTest<CreateAvatarBloc, CreateAvatarState>(
    'emits [state with failure or success option] when created is called and avatar is invalid',
    build: () => createAvatarBloc,
    seed: () => CreateAvatarState(
      avatar: Avatar.empty(),
      createFailureOrSuccessOption: none(),
    ),
    act: (bloc) => bloc.add(const CreateAvatarEvent.created()),
    expect: () => [
      CreateAvatarState(
        avatar: Avatar.empty(),
        createFailureOrSuccessOption:
            some(left(const AvatarFailure.unexpected())),
      ),
    ],
  );
}
