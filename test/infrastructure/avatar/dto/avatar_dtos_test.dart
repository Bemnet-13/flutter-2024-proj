import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:FantasyE/infrastructure/avatar/dto/avatar_dtos.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/core/value_objects.dart';

void main() {
  group('AvatarDto', () {
    final avatar = Avatar(
      id: UniqueId.fromUniqueString('test_id'),
      avatarName: AvatarName('Test Avatar'),
      avatarScore: AvatarScore('0'),
      avatarClub: AvatarClub('Test Club'),
    );

    final avatarDto = AvatarDto(
      id: 'test_id',
      avatarName: 'Test Avatar',
      avatarScore: 0,
      avatarClub: 'Test Club',
    );

    test('fromDomain should convert Avatar to AvatarDto', () {
      final result = AvatarDto.fromDomain(avatar);

      expect(result.id, avatar.id.getOrCrash());
      expect(result.avatarName, avatar.avatarName.getOrCrash());
      expect(result.avatarScore, avatar.avatarScore.getOrCrash());
      expect(result.avatarClub, avatar.avatarClub.getOrCrash());
    });

    test('toDomain should convert AvatarDto to Avatar', () {
      final result = avatarDto.toDomain();

      expect(result.id.getOrCrash(), avatar.id.getOrCrash());
      expect(result.avatarName.getOrCrash(), avatar.avatarName.getOrCrash());
      expect(result.avatarScore.getOrCrash(), avatar.avatarScore.getOrCrash());
      expect(result.avatarClub.getOrCrash(), avatar.avatarClub.getOrCrash());
    });
  });
}
