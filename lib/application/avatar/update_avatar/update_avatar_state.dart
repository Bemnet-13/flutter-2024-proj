part of 'update_avatar_bloc.dart';

@freezed
abstract class UpdateAvatarState with _$UpdateAvatarState {
  const factory UpdateAvatarState({
    required Avatar avatar,
    required Option<Either<AvatarFailure, Unit>> updateFailureOrSuccessOption,
  }) = _UpdateAvatarState;

  factory UpdateAvatarState.initial() => UpdateAvatarState(
        avatar: Avatar.empty(),
        updateFailureOrSuccessOption: none(),
      );
}



