import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'avatar_manager_event.dart';
part 'avatar_manager_state.dart';
part 'avatar_manager_bloc.freezed.dart';


@injectable
class AvatarManagerBloc extends Bloc<AvatarManagerEvent, AvatarManagerState> {
  IAvatarRepository repository;
  Either<AvatarFailure, Unit> failureOrSuccess =
      left(const AvatarFailure.invalidData());
  AvatarManagerBloc(this.repository) : super(AvatarManagerState.initial()) {
    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          avatarName: AvatarName(event.nameStr),
          operationFailureOrSuccess: none(),
        ),
      );
    });
    on<ClubChanged>((event, emit) {
      emit(
        state.copyWith(
          avatarClub: AvatarClub(event.clubStr),
          operationFailureOrSuccess: none(),
        ),
      );
    });
    on<ScoreChanged>((event, emit) {
      emit(
        state.copyWith(
          avatarScore: AvatarScore(event.scoreVal),
          operationFailureOrSuccess: none(),
        ),
      );
    });
    on<CreateAvatarPressed>((event, emit) async {
      final isAvatarNameValid = state.avatarName.isValid();
      if (isAvatarNameValid) {
        emit(state.copyWith(operationFailureOrSuccess: none()));
        failureOrSuccess = await repository.create(
          Avatar(
            id: state.uniqueId,
            avatarName: state.avatarName,
            avatarClub: state.avatarClub,
            avatarScore: state.avatarScore,
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
    on<AvatarSelected>(((event, emit) {
      emit(
        state.copyWith(
            avatarName: state.avatarName, uniqueId: state.uniqueId, avatarScore: state.avatarScore, avatarClub: state.avatarClub),
      );
    }));
    on<UpdateAvatarPressed>((event, emit) async {
      final isAvatarNameValid = state.avatarName.isValid();
      if (isAvatarNameValid) {
        emit(state.copyWith(operationFailureOrSuccess: none()));
        failureOrSuccess = await repository.update(
          Avatar(
            id: state.uniqueId,
            avatarName: state.avatarName,
            avatarClub: state.avatarClub,
            avatarScore: state.avatarScore,
          ),
        );
      }
      emit(
        state.copyWith(
          operationFailureOrSuccess: optionOf(failureOrSuccess),
        ),
      );
    });

    on<DeleteAvatarTriggered>((event, emit) async {
      final isavatarNameValid = state.avatarName.isValid();
      if (isavatarNameValid) {
        emit(state.copyWith(operationFailureOrSuccess: none()));
        failureOrSuccess = await repository.delete(
          Avatar(
            id: state.uniqueId,
            avatarName: state.avatarName,
            avatarClub: state.avatarClub,
            avatarScore: state.avatarScore,
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
