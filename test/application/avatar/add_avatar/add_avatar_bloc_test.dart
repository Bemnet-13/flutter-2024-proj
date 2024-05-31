import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/application/avatar/add_avatar/add_avatar_bloc.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:equatable/equatable.dart';

class MockAvatarRepository extends Mock implements IAvatarRepository {}

void main() {
  late AddAvatarBloc addAvatarBloc;
  late MockAvatarRepository mockAvatarRepository;
  late UniqueId testUniqueId;

  setUpAll(() {
    EquatableConfig.stringify = true;
  });

  setUp(() {
    mockAvatarRepository = MockAvatarRepository();
    addAvatarBloc = AddAvatarBloc(mockAvatarRepository);
    testUniqueId = UniqueId.fromUniqueString('test-unique-id');
  });

  tearDown(() {
    addAvatarBloc.close();
  });

  test('initial state is AddAvatarState.initial()', () {
    expect(
      addAvatarBloc.state,
      AddAvatarState.initial().copyWith(avatarId: testUniqueId),
    );
  });

  blocTest<AddAvatarBloc, AddAvatarState>(
    'emits [AddAvatarState with success] when addAvatarStarted is added and succeeds',
    build: () {
      when(() => mockAvatarRepository.add(any()))
          .thenAnswer((_) async => right(unit));
      return addAvatarBloc;
    },
    act: (bloc) => bloc.add(AddAvatarEvent.addAvatarStarted(testUniqueId)),
    expect: () => [
      AddAvatarState(
        avatarId: testUniqueId,
        addFailureOrSuccessOption: none(),
      ),
      AddAvatarState(
        avatarId: testUniqueId,
        addFailureOrSuccessOption: optionOf(right(unit)),
      ),
    ],
  );

  blocTest<AddAvatarBloc, AddAvatarState>(
    'emits [AddAvatarState with invalid data failure] when addAvatarStarted is added and fails with invalid data',
    build: () {
      when(() => mockAvatarRepository.add(any()))
          .thenAnswer((_) async => left(const AvatarFailure.invalidData()));
      return addAvatarBloc;
    },
    act: (bloc) => bloc.add(AddAvatarEvent.addAvatarStarted(testUniqueId)),
    expect: () => [
      AddAvatarState(
        avatarId: testUniqueId,
        addFailureOrSuccessOption: none(),
      ),
      AddAvatarState(
        avatarId: testUniqueId,
        addFailureOrSuccessOption:
            optionOf(left(const AvatarFailure.invalidData())),
      ),
    ],
  );
}
