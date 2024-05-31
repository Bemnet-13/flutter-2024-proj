import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_actor_event.dart';
part 'league_actor_state.dart';
part 'league_actor_bloc.freezed.dart';

class LeagueActorBloc extends Bloc<LeagueActorEvent, LeagueActorState> {
  ILeagueRepository repository;
  LeagueActorBloc(this.repository) : super(LeagueActorState.initial()) {
    on<LeagueActorEvent>((event, emit) {
      
    });
  }
}
