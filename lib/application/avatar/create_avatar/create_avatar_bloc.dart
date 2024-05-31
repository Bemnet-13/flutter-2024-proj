import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';

part 'create_avatar_bloc.freezed.dart';
part 'create_avatar_event.dart';
part 'create_avatar_state.dart';

@injectable
class CreateAvatarBloc extends Bloc<CreateAvatarEvent, CreateAvatarState> {
  final IAvatarRepository _avatarRepository;

  CreateAvatarBloc(this._avatarRepository) : super(CreateAvatarState.initial());

  Stream<CreateAvatarState> mapEventToState(
    CreateAvatarEvent event,
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
      nameChanged: (e) async* {
        yield state.copyWith(
          avatar: state.avatar.copyWith(name: AvatarName(e.nameStr)),
          createFailureOrSuccessOption: none(),
        );
      },
      clubChanged: (e) async* {
        yield state.copyWith(
          avatar: state.avatar.copyWith(club: AvatarClub(e.clubStr)),
          createFailureOrSuccessOption: none(),
        );
      },
      scoreChanged: (e) async* {
        yield state.copyWith(
          avatar: state.avatar.copyWith(score: AvatarScore(e.score)),
          createFailureOrSuccessOption: none(),
        );
      },
      created: (e) async* {
        Either<AvatarFailure, Unit> failureOrSuccess;

        if (state.avatar.failureOption.isNone()) {
          failureOrSuccess = await _avatarRepository.create(state.avatar);
        } else {
          failureOrSuccess = left(const AvatarFailure.unexpected());
        }

        yield state.copyWith(
          createFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
