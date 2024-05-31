part of 'create_avatar_bloc.dart';

@freezed
abstract class CreateAvatarState with _$CreateAvatarState {
  const factory CreateAvatarState({
    required Avatar avatar,
    required Option<Either<AvatarFailure, Unit>> createFailureOrSuccessOption,
  }) = _CreateAvatarState;

  factory CreateAvatarState.initial() => CreateAvatarState(
        avatar: Avatar.empty(),
        createFailureOrSuccessOption: none(),
      );
}
