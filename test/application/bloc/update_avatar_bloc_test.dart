import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:FantasyE/application/avatar/update_avatar/update_avatar_bloc.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAvatarRepository extends Mock implements IAvatarRepository {}

void main() {
  group('UpdateAvatarBloc', () {
    final Avatar initialAvatar = Avatar(
        id: UniqueId(),
        name: AvatarName('Initial Name'),
        club: AvatarClub('Initial Club'),
        score: AvatarScore(100));

    blocTest<UpdateAvatarBloc, UpdateAvatarState>(
      'emits [initial state] when initialized with an avatar',
      build: () =>
          UpdateAvatarBloc(MockAvatarRepository() as IAvatarRepository),
      act: (bloc) => bloc.add(UpdateAvatarEvent.initialized(initialAvatar)),
      expect: () => [
        UpdateAvatarState(
          avatar: initialAvatar,
          updateFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<UpdateAvatarBloc, UpdateAvatarState>(
      'emits [state with updated success] when update is successful',
      build: () {
        final repository = MockAvatarRepository();
        when(repository.update(any)).thenAnswer((_) async => right(unit));
        return UpdateAvatarBloc(repository);
      },
      act: (bloc) => bloc.add(const UpdateAvatarEvent.updateStarted()),
      expect: () => [
        UpdateAvatarState(
          avatar: Avatar.empty(),
          updateFailureOrSuccessOption: none(),
        ),
        UpdateAvatarState(
          avatar: Avatar.empty(),
          updateFailureOrSuccessOption: some(right(unit)),
        ),
      ],
    );
  });
}
