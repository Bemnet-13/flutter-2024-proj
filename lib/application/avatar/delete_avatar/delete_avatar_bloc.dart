import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';

part 'delete_avatar_bloc.freezed.dart';
part 'delete_avatar_event.dart';
part 'delete_avatar_state.dart';

@injectable
class DeleteAvatarBloc extends Bloc<DeleteAvatarEvent, DeleteAvatarState> {
  final IAvatarRepository _avatarRepository;

  DeleteAvatarBloc(this._avatarRepository) : super(DeleteAvatarState.initial());

  @override
  Stream<DeleteAvatarState> mapEventToState(
    DeleteAvatarEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialAvatarOption.fold(
          () => state,
          (initialAvatar) {
            return state.copyWith(
              avatar: initialAvatar,
            );
          },
        );
      },
      deleteStarted: (e) async* {
        yield state.copyWith(
          deleteFailureOrSuccessOption: none(),
        );
        final Either<AvatarFailure, Unit> failureOrSuccess =
            await _avatarRepository.delete(state.avatar);
        yield state.copyWith(
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
