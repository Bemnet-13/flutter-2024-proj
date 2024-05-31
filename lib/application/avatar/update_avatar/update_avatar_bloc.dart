import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';

part 'update_avatar_bloc.freezed.dart';
part 'update_avatar_event.dart';
part 'update_avatar_state.dart';


@injectable
class UpdateAvatarBloc extends Bloc<UpdateAvatarEvent, UpdateAvatarState> {
  final IAvatarRepository _avatarRepository;

  UpdateAvatarBloc(this._avatarRepository) : super(UpdateAvatarState.initial());

  @override
  Stream<UpdateAvatarState> mapEventToState(
    UpdateAvatarEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
          avatar: e.avatar,
        );
      },
      updateStarted: (e) async* {
        yield state.copyWith(
          updateFailureOrSuccessOption: none(),
        );
        final Either<AvatarFailure, Unit> failureOrSuccess =
            await _avatarRepository.update(state.avatar);
        yield state.copyWith(
          updateFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
