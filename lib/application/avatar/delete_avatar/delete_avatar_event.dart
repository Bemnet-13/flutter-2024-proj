part of 'delete_avatar_bloc.dart';

@freezed
abstract class DeleteAvatarEvent with _$DeleteAvatarEvent {
  const factory DeleteAvatarEvent.initialized(Option<Avatar> initialAvatarOption) = _Initialized;
  const factory DeleteAvatarEvent.deleteStarted() = _DeleteStarted;
}
