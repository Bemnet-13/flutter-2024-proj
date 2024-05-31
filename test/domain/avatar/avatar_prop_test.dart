import 'package:flutter_test/flutter_test.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';

void main() {
  group('AvatarName', () {
    test('should return failure when the name is empty', () {
      final avatarName = AvatarName('');

      expect(avatarName.isValid(), false);
    });

    test('should return a valid AvatarName when the name is not empty', () {
      final avatarName = AvatarName('Test Avatar');

      expect(avatarName.isValid(), true);
    });
  });

  group('AvatarClub', () {
    test('should return failure when the club name is empty', () {
      final avatarClub = AvatarClub('');

      expect(avatarClub.isValid(), false);
    });

    test('should return a valid AvatarClub when the club name is not empty',
        () {
      final avatarClub = AvatarClub('Test Club');

      expect(avatarClub.isValid(), true);
    });
  });

  group('AvatarScore', () {
    test('should return 0 when the score is empty', () {
      final avatarScore = AvatarScore('');

      expect(avatarScore.isValid(), true);
      expect(avatarScore.getOrCrash(), 0);
    });

    test('should return a valid AvatarScore when the score is a valid integer',
        () {
      final avatarScore = AvatarScore('10');

      expect(avatarScore.isValid(), true);
      expect(avatarScore.getOrCrash(), 10);
    });

    test('should return failure when the score is not a valid integer', () {
      final avatarScore = AvatarScore('invalid');

      expect(avatarScore.isValid(), false);
    });
  });
}
