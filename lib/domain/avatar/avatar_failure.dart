import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_failure.freezed.dart';

@freezed
abstract class AvatarFailure with _$AvatarFailure {
  const factory AvatarFailure.unexpected() = Unexpected;
  const factory AvatarFailure.insufficientPermissions() = InsufficientPermissions;
  const factory AvatarFailure.unableToUpdate() = UnableToUpdate;
}