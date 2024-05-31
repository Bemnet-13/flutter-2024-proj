import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_manager_event.dart';
part 'league_manager_state.dart';
part 'league_manager_bloc.freezed.dart';

class LeagueManagerBloc extends Bloc<LeagueManagerEvent, LeagueManagerState> {
  ILeagueRepository repository;
  Either<LeagueFailure, Unit> failureOrSuccess =
      left(const LeagueFailure.invalidData());
  LeagueManagerBloc(this.repository) : super(LeagueManagerState.initial()) {
    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          leagueName: state.leagueName,
          operationFailureOrSuccess: none(),
        ),
      );
    });
    on<CreateLeaguePressed>((event, emit) async {
      final isLeagueNameValid = state.leagueName.isValid();

      if (isLeagueNameValid) {
        emit(state.copyWith(operationFailureOrSuccess: none()));
        failureOrSuccess = await repository.createLeague(
          League(
            id: UniqueId(),
            name: state.leagueName,
            members: [],
          ),
        );
      }
      emit(
        state.copyWith(
          operationFailureOrSuccess: optionOf(failureOrSuccess),
        ),
      );
    });
    on<UpdateLeaguePressed>((event, emit) async {
      final isLeagueNameValid = state.leagueName.isValid();
      if (isLeagueNameValid) {
        emit(state.copyWith(operationFailureOrSuccess: none()));
        failureOrSuccess = await repository.updateLeague(
          League(
            id: UniqueId(),
            name: state.leagueName,
            members: [],
          ),
        );
      }
      emit(
        state.copyWith(
          operationFailureOrSuccess: optionOf(failureOrSuccess),
        ),
      );
    });
  }
}
