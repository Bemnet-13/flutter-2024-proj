import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_watcher_event.dart';
part 'league_watcher_state.dart';
part 'league_watcher_bloc.freezed.dart';

class LeagueWatcherBloc extends Bloc<LeagueWatcherEvent, LeagueWatcherState> {
  ILeagueRepository repository;

  LeagueWatcherBloc(this.repository)
      : super(const LeagueWatcherState.initial()) {
    on<GetAllLeagues>((event, emit) {
      emit(const LeagueWatcherState.loadInProgress());
      repository.getAllLeagues().then(
        (value) {
          value.fold(
            (f) => emit(LeagueWatcherState.loadFailure(f)),
            (r) => emit(LeagueWatcherState.loadSuccess(r)),
          );
        },
      );
    });
  }
}
