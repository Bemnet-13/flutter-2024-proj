part of 'add_avatar_bloc.dart';

@freezed
abstract class AddAvatarEvent with _$AddAvatarEvent {
  const factory AddAvatarEvent.addAvatarStarted(UniqueId avatarId) = _AddAvatarStarted;
}
