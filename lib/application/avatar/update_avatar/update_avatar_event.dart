part of 'update_avatar_bloc.dart';
@freezed
abstract class UpdateAvatarEvent with _$UpdateAvatarEvent {
  const factory UpdateAvatarEvent.initialized(Avatar avatar) = _Initialized;
  const factory UpdateAvatarEvent.updateStarted() = _UpdateStarted;
}
