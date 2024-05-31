import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/application/avatar/add_avatar/add_avatar_bloc.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'add_avatar_bloc_test.mocks.dart';

@GenerateMocks([IAvatarRepository],
    customMocks: [MockSpec<IAvatarRepository>(as: #MockAvatarRepositoryUnique)])
void main() {
  late AddAvatarBloc addAvatarBloc;
  late MockAvatarRepositoryUnique mockAvatarRepository;

  setUp(() {
    mockAvatarRepository = MockAvatarRepositoryUnique();
    addAvatarBloc = AddAvatarBloc(mockAvatarRepository);
  });

  tearDown(() {
    addAvatarBloc.close();
  });

  group('AddAvatarBloc', () {
    final initialAvatar = Avatar.empty();

    blocTest<AddAvatarBloc, AddAvatarState>(
      'emits [initial state] when initialized is called with empty avatar',
      build: () => addAvatarBloc,
      act: (bloc) => bloc.add(AddAvatarEvent.initialized(none())),
      expect: () => [
        AddAvatarState
            .initial(), // Expecting the initial state since it's yielded by the event handler
      ],
    );

    blocTest<AddAvatarBloc, AddAvatarState>(
      'emits [initial state with avatar] when initialized is called with an avatar',
      build: () => addAvatarBloc,
      act: (bloc) =>
          bloc.add(AddAvatarEvent.initialized(optionOf(initialAvatar))),
      expect: () => [
        AddAvatarState(
          avatar: initialAvatar,
          addFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<AddAvatarBloc, AddAvatarState>(
      'emits [add failure or success option] when addStarted is called',
      build: () {
        when(mockAvatarRepository.add(any))
            .thenAnswer((_) async => right(unit));
        return addAvatarBloc;
      },
      act: (bloc) => bloc.add(const AddAvatarEvent.addStarted()),
      expect: () => [
        AddAvatarState(
          avatar: initialAvatar,
          addFailureOrSuccessOption: none(),
        ),
        AddAvatarState(
          avatar: initialAvatar,
          addFailureOrSuccessOption: some(right(unit)),
        ),
      ],
      verify: (_) {
        verify(mockAvatarRepository.add(any)).called(1);
      },
    );

    blocTest<AddAvatarBloc, AddAvatarState>(
      'emits [add failure or success option] with failure when addStarted is called and repository fails',
      build: () {
        when(mockAvatarRepository.add(any))
            .thenAnswer((_) async => left(const AvatarFailure.unexpected()));
        return addAvatarBloc;
      },
      act: (bloc) => bloc.add(const AddAvatarEvent.addStarted()),
      expect: () => [
        AddAvatarState(
          avatar: initialAvatar,
          addFailureOrSuccessOption: none(),
        ),
        AddAvatarState(
          avatar: initialAvatar,
          addFailureOrSuccessOption:
              some(left(const AvatarFailure.unexpected())),
        ),
      ],
      verify: (_) {
        verify(mockAvatarRepository.add(any)).called(1);
      },
    );
  });
}
