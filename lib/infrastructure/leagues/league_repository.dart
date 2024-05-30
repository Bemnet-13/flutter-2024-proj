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
  final token = new FlutterSecureStorage();

  @override
  Future<Either<LeagueFailure, Unit>> create(League league) async {
    String? tokenValue = await token.read(key: 'Token');

    final leagueDto = LeagueDto.fromDomain(league);
    final url = Uri.parse('http://10.0.2.2:3000/league');
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
  Future<Either<LeagueFailure, Unit>> update(League league) async {
    String? tokenValue = await token.read(key: 'Token');

    final leagueDto = LeagueDto.fromDomain(league);
    final url = Uri.parse('http://10.0.2.2:3000/league');
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
  Future<Either<LeagueFailure, Unit>> delete(League league) async {
    String? tokenValue = await token.read(key: 'Token');

    final url = Uri.parse('http://10.0.2.2:3000/league');
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
