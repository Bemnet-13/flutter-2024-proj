import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:FantasyE/infrastructure/leagues/league_dtos.dart';

@LazySingleton(as: ILeagueRepository)
class LeagueRepository implements ILeagueRepository {
  final token = const FlutterSecureStorage();
  final url = Uri.parse('http://10.0.2.2:3000/league');
  @override
  Future<Either<LeagueFailure, List<League>>> getAllLeagues() async {
    String? tokenValue = await token.read(key: 'Token');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };
    try {
      final response = await http.get(
        url, // Replace with your API URL
        headers: headers,
      );
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        final List<LeagueDto> leagueDtos =
            responseBody.map((json) => LeagueDto.fromJson(json)).toList();
        final List<League> leagues =
            leagueDtos.map((dto) => dto.toDomain()).toList();
        return right(leagues);
      } else {
        return left(const LeagueFailure.unexpected());
      }
    } catch (e) {
      return left(const LeagueFailure.unexpected());
    }
  }

  @override
  Future<Either<LeagueFailure, Unit>> createLeague(League league) async {
    String? tokenValue = await token.read(key: 'Token');

    final leagueDto = LeagueDto.fromDomain(league);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: jsonEncode(leagueDto.toJson()),
      );

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const LeagueFailure.unexpected());
      }
    } catch (e) {
      return left(const LeagueFailure.unexpected());
    }
  }

  @override
  Future<Either<LeagueFailure, Unit>> updateLeague(League league) async {
    String? tokenValue = await token.read(key: 'Token');

    final leagueDto = LeagueDto.fromDomain(league);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };

    try {
      final response = await http.put(
        url,
        headers: headers,
        body: jsonEncode(leagueDto.toJson()),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const LeagueFailure.unableToUpdate());
      }
    } catch (e) {
      return left(const LeagueFailure.unexpected());
    }
  }

  @override
  Future<Either<LeagueFailure, Unit>> deleteLeague(League league) async {
    String? tokenValue = await token.read(key: 'Token');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };

    try {
      final response = await http.delete(
        url,
        headers: headers,
        body: jsonEncode({'id': league.id.toString()}),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const LeagueFailure.unableToUpdate());
      }
    } catch (e) {
      return left(const LeagueFailure.unexpected());
    }
  }
}
