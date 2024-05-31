import 'package:FantasyE/application/avatar/avatar_watcher/avatar_watcher_bloc.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAvatarRepository extends Mock implements IAvatarRepository {}

void main() {
  late AvatarWatcherBloc avatarWatcherBloc;
  late MockAvatarRepository mockAvatarRepository;

  setUp(() {
    mockAvatarRepository = MockAvatarRepository();
    avatarWatcherBloc = AvatarWatcherBloc(mockAvatarRepository);
  });

  tearDown(() {
    avatarWatcherBloc.close();
  });

  final testAvatars = [
    Avatar(
      id: UniqueId.fromUniqueString('test-id-1'),
      avatarName: AvatarName('Test Avatar 1'),
      avatarClub: AvatarClub('Test Club 1'),
      avatarScore: AvatarScore('10'),
    ),
    Avatar(
      id: UniqueId.fromUniqueString('test-id-2'),
      avatarName: AvatarName('Test Avatar 2'),
      avatarClub: AvatarClub('Test Club 2'),
      avatarScore: AvatarScore('20'),
    ),
  ];

  test('initial state is AvatarWatcherState.initial()', () {
    expect(avatarWatcherBloc.state, const AvatarWatcherState.initial());
  });

  blocTest<AvatarWatcherBloc, AvatarWatcherState>(
    'emits [AvatarWatcherState.loadInProgress, AvatarWatcherState.loadSuccess] when GetAllAvatars is added and repository returns avatars',
    build: () {
      when(() => mockAvatarRepository.watchAll())
          .thenAnswer((_) async => right(testAvatars));
      return avatarWatcherBloc;
    },
    act: (bloc) => bloc.add(const GetAllAvatars()),
    expect: () => [
      const AvatarWatcherState.loadInProgress(),
      AvatarWatcherState.loadSuccess(testAvatars),
    ],
    verify: (_) {
      verify(() => mockAvatarRepository.watchAll()).called(1);
    },
  );

  blocTest<AvatarWatcherBloc, AvatarWatcherState>(
    'emits [AvatarWatcherState.loadInProgress, AvatarWatcherState.loadFailure] when GetAllAvatars is added and repository returns failure',
    build: () {
      when(() => mockAvatarRepository.watchAll())
          .thenAnswer((_) async => left(const AvatarFailure.unexpected()));
      return avatarWatcherBloc;
    },
    act: (bloc) => bloc.add(const GetAllAvatars()),
    expect: () => [
      const AvatarWatcherState.loadInProgress(),
      AvatarWatcherState.loadFailure(const AvatarFailure.unexpected()),
    ],
    verify: (_) {
      verify(() => mockAvatarRepository.watchAll()).called(1);
    },
  );
}
