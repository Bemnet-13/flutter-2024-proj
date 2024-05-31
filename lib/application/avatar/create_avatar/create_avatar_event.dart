part of 'create_avatar_bloc.dart';

@freezed
abstract class CreateAvatarEvent with _$CreateAvatarEvent {
  const factory CreateAvatarEvent.initialized(Option<Avatar> initialAvatarOption) = _Initialized;
  const factory CreateAvatarEvent.nameChanged(String nameStr) = _NameChanged;
  const factory CreateAvatarEvent.clubChanged(String clubStr) = _ClubChanged;
  const factory CreateAvatarEvent.scoreChanged(int score) = _ScoreChanged;
  const factory CreateAvatarEvent.created() = _Created;
}
