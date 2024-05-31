import 'package:FantasyE/application/league/league_actor/league_actor_bloc.dart';
import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LeagueActorBloc', () {
    test('emits LeagueActorState.initial() when bloc is started', () {
      final bloc = LeagueActorBloc(MockLeagueRepository() as ILeagueRepository);
      expect(bloc.state, equals(const LeagueActorState.initial()));
    });
  });
}

class MockLeagueRepository implements ILeagueRepository {
  @override
  Future<void> createLeague() async {
    // Simulate successful creation
    return Future.value();
  }
}

//I stopped here