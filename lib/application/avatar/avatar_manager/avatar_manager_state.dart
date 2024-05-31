part of 'avatar_manager_bloc.dart';

@freezed
class AvatarManagerState with _$AvatarManagerState {
  const factory AvatarManagerState({
    required AvatarName avatarName,
    required UniqueId uniqueId,
    required AvatarScore avatarScore,
    required AvatarClub avatarClub,
    required Option<Either<AvatarFailure, Unit>> operationFailureOrSuccess,
    required bool showErrorMessages,
  }) = _AvatarManagerState;

  factory AvatarManagerState.initial() => AvatarManagerState(
        avatarName: AvatarName(''),
        uniqueId: UniqueId.fromUniqueString(''),
        avatarScore:AvatarScore('0'),
        avatarClub: AvatarClub(''),
        operationFailureOrSuccess: none(),
        showErrorMessages: false,
      );
}