import 'package:flutter_test/flutter_test.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';

void main() {
  group('League', () {
    test('should initialize correctly with given values', () {
      final league = League(
        id: UniqueId(),
        name: LeagueName('Test League'),
        members: [MemberId('member1'), MemberId('member2')],
      );

      expect(league.id.getOrCrash(), isNotNull);
      expect(league.name.getOrCrash(), 'Test League');
      expect(league.members.length, 2);
    });
  });
}
