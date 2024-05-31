part of 'add_avatar_bloc.dart';

@freezed
abstract class AddAvatarState with _$AddAvatarState {
  const factory AddAvatarState({
    required Avatar avatar,
    required Option<Either<AvatarFailure, Unit>> addFailureOrSuccessOption,
  }) = _AddAvatarState;

  factory AddAvatarState.initial() => AddAvatarState(
        avatar: Avatar.empty(),
        addFailureOrSuccessOption: none(),
      );
}
