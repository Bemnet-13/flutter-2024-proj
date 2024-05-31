import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'league_manager_event.dart';
part 'league_manager_state.dart';
part 'league_manager_bloc.freezed.dart';

@injectable
class LeagueManagerBloc extends Bloc<LeagueManagerEvent, LeagueManagerState> {
  ILeagueRepository repository;
  Either<LeagueFailure, Unit> failureOrSuccess =
      left(const LeagueFailure.invalidData());
  LeagueManagerBloc(this.repository) : super(LeagueManagerState.initial()) {
    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          leagueName: LeagueName(event.nameStr),
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
    on<IdSet>(((event, emit) {
      emit(state.copyWith(uniqueId: event.id));
    }));
    on<LeagueSelected>(((event, emit) {
      emit(
        state.copyWith(
            leagueName: event.name, uniqueId: event.id, members: event.members),
      );
    }));
    on<UpdateLeaguePressed>((event, emit) async {
      final isLeagueNameValid = state.leagueName.isValid();
      if (isLeagueNameValid) {
        emit(state.copyWith(operationFailureOrSuccess: none()));
        failureOrSuccess = await repository.updateLeague(
          League(
            id: state.uniqueId,
            name: state.leagueName,
            members: state.members,
          ),
        );
      }
      emit(
        state.copyWith(
          operationFailureOrSuccess: optionOf(failureOrSuccess),
        ),
      );
    });
    on<DeleteLeagueTriggered>((event, emit) async {
      final isLeagueNameValid = state.leagueName.isValid();
      if (isLeagueNameValid) {
        emit(state.copyWith(operationFailureOrSuccess: none()));
        failureOrSuccess = await repository.deleteLeague(
          League(
            id: state.uniqueId,
            name: state.leagueName,
            members: state.members,
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
