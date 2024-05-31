import 'package:FantasyE/application/league/league_watcher/league_watcher_bloc.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLeagueRepository extends Mock implements ILeagueRepository {}

void main() {
  late LeagueWatcherBloc leagueWatcherBloc;
  late MockLeagueRepository mockLeagueRepository;

  setUp(() {
    mockLeagueRepository = MockLeagueRepository();
    leagueWatcherBloc = LeagueWatcherBloc(mockLeagueRepository);
  });

  tearDown(() {
    leagueWatcherBloc.close();
  });

  final testLeague = League(
    id: UniqueId(),
    name: LeagueName('Test League'),
    members: [],
  );

  final List<League> testLeagues = [testLeague];

  test('initial state is LeagueWatcherState.initial()', () {
    expect(leagueWatcherBloc.state, const LeagueWatcherState.initial());
  });

  blocTest<LeagueWatcherBloc, LeagueWatcherState>(
    'emits [LeagueWatcherState.loadInProgress, LeagueWatcherState.loadSuccess] when GetAllLeagues is added and getAllLeagues succeeds',
    build: () {
      when(() => mockLeagueRepository.getAllLeagues())
          .thenAnswer((_) async => right(testLeagues));
      return leagueWatcherBloc;
    },
    act: (bloc) => bloc.add(const GetAllLeagues()),
    expect: () => [
      const LeagueWatcherState.loadInProgress(),
      LeagueWatcherState.loadSuccess(testLeagues),
    ],
    verify: (_) {
      verify(() => mockLeagueRepository.getAllLeagues()).called(1);
    },
  );

  blocTest<LeagueWatcherBloc, LeagueWatcherState>(
    'emits [LeagueWatcherState.loadInProgress, LeagueWatcherState.loadFailure] when GetAllLeagues is added and getAllLeagues fails',
    build: () {
      when(() => mockLeagueRepository.getAllLeagues())
          .thenAnswer((_) async => left(const LeagueFailure.unexpected()));
      return leagueWatcherBloc;
    },
    act: (bloc) => bloc.add(const GetAllLeagues()),
    expect: () => [
      const LeagueWatcherState.loadInProgress(),
      const LeagueWatcherState.loadFailure(LeagueFailure.unexpected()),
    ],
    verify: (_) {
      verify(() => mockLeagueRepository.getAllLeagues()).called(1);
    },
  );
}
