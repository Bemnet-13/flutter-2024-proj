import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';

part 'add_avatar_bloc.freezed.dart';
part 'add_avatar_event.dart';
part 'add_avatar_state.dart';

@injectable
class AddAvatarBloc extends Bloc<AddAvatarEvent, AddAvatarState> {
  final IAvatarRepository _avatarRepository;

  AddAvatarBloc(this._avatarRepository) : super(AddAvatarState.initial());

  Stream<AddAvatarState> mapEventToState(
    AddAvatarEvent event,
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
      addStarted: (e) async* {
        yield state.copyWith(
          addFailureOrSuccessOption: none(),
        );
        final Either<AvatarFailure, Unit> failureOrSuccess =
            await _avatarRepository.add(state.avatar);
        yield state.copyWith(
          addFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
