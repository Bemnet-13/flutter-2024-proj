
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';


part 'avatar_dtos.g.dart';
part 'avatar_dtos.freezed.dart';


@freezed
abstract class AvatarDto with _$AvatarDto {
  factory AvatarDto({
    @JsonKey(ignore: true) String? id,
    required String name,
    required String club,
    required int score,
  }) = _AvatarDto;

  factory AvatarDto.fromDomain(Avatar avatar) {
    return AvatarDto(
      id: avatar.id.getOrCrash(),
      name: avatar.name.getOrCrash(),
      club: avatar.club.getOrCrash(),
      score: avatar.score.getOrCrash(),
    );
  }

  factory AvatarDto.fromJson(Map<String, dynamic> json) => _$AvatarDtoFromJson(json);
}

extension AvatarDtoX on AvatarDto {
  Avatar toDomain() {
    return Avatar(
      id: UniqueId.fromUniqueString(id!),
      name: AvatarName(name),
      club: AvatarClub(club),
      score: AvatarScore(score),
    );
  }
}
