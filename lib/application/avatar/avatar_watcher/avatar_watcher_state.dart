part of 'avatar_watcher_bloc.dart';

@freezed
class AvatarWatcherState with _$AvatarWatcherState {
  const factory AvatarWatcherState.initial() = _Initial;
  const factory AvatarWatcherState.loadInProgress() = LoadInProgress;
  const factory AvatarWatcherState.loadSuccess(List<Avatar> avatars) = LoadSuccess;
  const factory AvatarWatcherState.loadFailure(AvatarFailure failure) = LoadFailure;
}