part of 'avatar_manager_bloc.dart';

@freezed
class AvatarManagerEvent with _$AvatarManagerEvent {
  const factory AvatarManagerEvent.nameChanged(String nameStr) = NameChanged;
  const factory AvatarManagerEvent.clubChanged(String clubStr) = ClubChanged;
  const factory AvatarManagerEvent.scoreChanged(int scoreVal) = ScoreChanged;
  const factory AvatarManagerEvent.idSet(UniqueId id) = IdSet;
  const factory AvatarManagerEvent.avatarSelected(AvatarName name, UniqueId id, AvatarScore score, AvatarClub avatarClub) =
      AvatarSelected;
  const factory AvatarManagerEvent.createAvatarPressed() = CreateAvatarPressed;
  const factory AvatarManagerEvent.updateAvatarPressed() = UpdateAvatarPressed;
  const factory AvatarManagerEvent.deleteAvatarTriggered() =
      DeleteAvatarTriggered;
}
