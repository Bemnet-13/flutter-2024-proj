import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/infrastructure/leagues/dto/league_dtos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LeagueDto', () {
    final league = League(
      id: UniqueId.fromUniqueString('test_id'),
      name: LeagueName('Test League'),
      members: [MemberId('member1'), MemberId('member2')],
    );

    final leagueDto = LeagueDto(
      id: 'test_id',
      name: 'Test League',
      members: ['member1', 'member2'],
    );

    test('should convert from DTO to domain', () {
      final domain = leagueDto.toDomain();

      expect(domain.id, league.id);
      expect(domain.name, league.name);
      expect(domain.members, league.members);
    });

    test('should convert DTO to JSON', () {
      final json = leagueDto.toJson();

      expect(json['_id'], leagueDto.id);
      expect(json['name'], leagueDto.name);
      expect(json['members'], leagueDto.members);
    });

    test('should convert from JSON to DTO', () {
      final json = {
        '_id': 'test_id',
        'name': 'Test League',
        'members': ['member1', 'member2'],
      };

      final dto = LeagueDto.fromJson(json);

      expect(dto.id, leagueDto.id);
      expect(dto.name, leagueDto.name);
      expect(dto.members, leagueDto.members);
    });
  });
}
