import 'package:FantasyE/application/league/league_manager/league_manager_bloc.dart';
import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLeagueRepository extends Mock implements ILeagueRepository {}

void main() {
  late LeagueManagerBloc leagueManagerBloc;
  late MockLeagueRepository mockLeagueRepository;

  setUp(() {
    mockLeagueRepository = MockLeagueRepository();
    leagueManagerBloc = LeagueManagerBloc(mockLeagueRepository);
  });

  tearDown(() {
    leagueManagerBloc.close();
  });

  test('initial state is LeagueManagerState.initial()', () {
    expect(leagueManagerBloc.state, LeagueManagerState.initial());
  });

  blocTest<LeagueManagerBloc, LeagueManagerState>(
    'emits [LeagueManagerState] with updated leagueName when NameChanged is added',
    build: () => leagueManagerBloc,
    act: (bloc) => bloc.add(const NameChanged('New League Name')),
    expect: () => [
      leagueManagerBloc.state.copyWith(
        leagueName: LeagueName('New League Name'),
        operationFailureOrSuccess: none(),
      ),
    ],
  );
}
