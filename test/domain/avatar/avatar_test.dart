import 'package:flutter_test/flutter_test.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';

void main() {
  group('Avatar', () {
    test('should initialize correctly with given values', () {
      final avatar = Avatar(
        id: UniqueId(),
        avatarName: AvatarName('Test Avatar'),
        avatarScore: AvatarScore('10'),
        avatarClub: AvatarClub('Test Club'),
      );

      expect(avatar.id.getOrCrash(), isNotNull);
      expect(avatar.avatarName.getOrCrash(), 'Test Avatar');
      expect(avatar.avatarScore.getOrCrash(), 10);
      expect(avatar.avatarClub.getOrCrash(), 'Test Club');
    });
  });
}
