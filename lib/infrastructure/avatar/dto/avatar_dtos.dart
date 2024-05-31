
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';


part 'avatar_dtos.freezed.dart';
part 'avatar_dtos.g.dart';


@freezed
abstract class AvatarDto with _$AvatarDto {
  factory AvatarDto({
    @JsonKey(ignore: true) String? id,
    required String avatarName,
    required String avatarClub,
    required int avatarScore,
  }) = _AvatarDto;

  factory AvatarDto.fromDomain(Avatar avatar) {
    return AvatarDto(
      id: avatar.id.getOrCrash(),
      avatarName: avatar.avatarName.getOrCrash(),
      avatarClub: avatar.avatarClub.getOrCrash(),
      avatarScore: avatar.avatarScore.getOrCrash(),
    );
  }

  factory AvatarDto.fromJson(Map<String, dynamic> json) => _$AvatarDtoFromJson(json);
}

extension AvatarDtoX on AvatarDto {
  Avatar toDomain() {
    return Avatar(
      id: UniqueId.fromUniqueString(id!),
      avatarName: AvatarName(avatarName),
      avatarClub: AvatarClub(avatarClub),
      avatarScore: AvatarScore(avatarScore),
    );
  }
}
