part of 'add_avatar_bloc.dart';

@freezed
abstract class AddAvatarState with _$AddAvatarState {
  const factory AddAvatarState({
    required UniqueId avatarId,
    required Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption,
  }) = _AddAvatarState;

  factory AddAvatarState.initial() => AddAvatarState(
        avatarId: UniqueId(),
        addFailureOrSuccessOption: none(),
      );
}
