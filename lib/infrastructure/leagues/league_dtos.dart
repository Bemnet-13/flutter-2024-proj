import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';

part 'league_dtos.g.dart';
part 'league_dtos.freezed.dart';

@freezed
abstract class LeagueDto with _$LeagueDto {
  const factory LeagueDto({
    @JsonKey(name: '_id') String? id,
    required String name,
    required List<String> members,
  }) = _LeagueDto;

  factory LeagueDto.fromDomain(League league) {
    return LeagueDto(
      id: league.id.toString(),
      name: league.name.toString(),
      members: league.members
          .map((memberId) => memberId.toString())
          .toList(),
    );
  }

  factory LeagueDto.fromJson(Map<String, dynamic> json) =>
      _$LeagueDtoFromJson(json);
}

extension LeagueDtoX on LeagueDto {
  League toDomain() {
    return League(
      id: UniqueId.fromUniqueString(id!),
      name: LeagueName(name),
      members: members.map((id) => MemberId(id)).toList(),
    );
  }
}
