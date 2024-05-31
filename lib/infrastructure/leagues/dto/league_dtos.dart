import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';

class LeagueDto {
  final String id;
  final String name;
  final List<String> members;

  LeagueDto({required this.id, required this.name, required this.members});

  factory LeagueDto.fromDomain(League league) {
    return LeagueDto(
      id: league.id.toString(),
      name: league.name.toString(),
      members: league.members.map((memberId) => memberId.toString()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'members': members,
    };
  }

  factory LeagueDto.fromJson(Map<String, dynamic> json) {
    return LeagueDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      members: List<String>.from(json['members'] as List),
    );
  }

  League toDomain() {
    return League(
      id: UniqueId.fromUniqueString(id),
      name: LeagueName(name),
      members: members.map((id) => MemberId(id)).toList(),
    );
  }
}