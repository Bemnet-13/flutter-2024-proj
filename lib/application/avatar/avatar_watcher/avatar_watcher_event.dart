part of 'avatar_watcher_bloc.dart';

@freezed
class AvatarWatcherEvent with _$AvatarWatcherEvent {
  const factory AvatarWatcherEvent.getAllAvatars() = GetAllAvatars;
}
