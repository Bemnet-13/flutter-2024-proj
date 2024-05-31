part of 'delete_avatar_bloc.dart';

@freezed
abstract class DeleteAvatarState with _$DeleteAvatarState {
  const factory DeleteAvatarState({
    required Avatar avatar,
    required Option<Either<AvatarFailure, Unit>> deleteFailureOrSuccessOption,
  }) = _DeleteAvatarState;

  factory DeleteAvatarState.initial() => DeleteAvatarState(
        avatar: Avatar.empty(),
        deleteFailureOrSuccessOption: none(),
      );
}
