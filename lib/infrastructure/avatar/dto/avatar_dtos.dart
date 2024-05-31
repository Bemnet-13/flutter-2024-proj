import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';

class AvatarDto {
  String id;
  String avatarName;
  String avatarClub;
  int avatarScore;

  AvatarDto(
      {required this.id,
      required this.avatarName,
      required this.avatarClub,
      required this.avatarScore});

  factory AvatarDto.fromDomain(Avatar avatar) {
    return AvatarDto(
      id: avatar.id.getOrCrash(),
      avatarName: avatar.avatarName.getOrCrash(),
      avatarClub: avatar.avatarClub.getOrCrash(),
      avatarScore: avatar.avatarScore.getOrCrash(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': avatarName,
      'club': avatarClub,
      'score': avatarScore,
    };
  }
factory AvatarDto.fromJson(Map<String, dynamic> json) {
    try {
      return AvatarDto(
        id: json['_id'],
        avatarName: json['name'],
        avatarClub: json['club'],
        avatarScore: json.containsKey('score')
            ? json['score']
            : 0, // Assuming a default score if not provided
      );
    } catch (e) {
      print("Error parsing AvatarDto from JSON: $e");
      rethrow; // rethrow to ensure the original error is still caught in the outer catch block
    }
  }

  Avatar toDomain() {
    return Avatar(
      id: UniqueId.fromUniqueString(id),
      avatarName: AvatarName(avatarName),
      avatarClub: AvatarClub(avatarClub),
      avatarScore: AvatarScore('$avatarScore'),
    );
  }
}
