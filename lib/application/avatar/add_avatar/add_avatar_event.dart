part of 'add_avatar_bloc.dart';

@freezed
abstract class AddAvatarEvent with _$AddAvatarEvent {
  const factory AddAvatarEvent.initialized(Option<Avatar> initialAvatarOption) = _Initialized;
  const factory AddAvatarEvent.addStarted() = _AddStarted;
}
