import 'package:flutter_test/flutter_test.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';

void main() {
  group('LeagueName', () {
    test('should return failure when the name is empty', () {
      final leagueName = LeagueName('');

      expect(leagueName.value.isLeft(), true);
    });

    test('should return a valid LeagueName when the name is not empty', () {
      final leagueName = LeagueName('Test League');

      expect(leagueName.value.isRight(), true);
    });
  });

  group('MemberId', () {
    test('should return failure when the member ID is empty', () {
      final memberId = MemberId('');

      expect(memberId.value.isLeft(), true);
    });

    test('should return a valid MemberId when the member ID is not empty', () {
      final memberId = MemberId('member1');

      expect(memberId.value.isRight(), true);
    });
  });
}
