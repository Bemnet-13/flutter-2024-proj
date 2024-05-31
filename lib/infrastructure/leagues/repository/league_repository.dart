import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:FantasyE/domain/leagues/i_league_repository.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:FantasyE/infrastructure/leagues/dto/league_dtos.dart';
import '../api_client.dart';

@LazySingleton(as: ILeagueRepository)
class LeagueRepository implements ILeagueRepository {
  ApiClient apiClient;
  LeagueRepository(this.apiClient);
  @override
  Future<Either<LeagueFailure, List<League>>> getAllLeagues() async {
    try {
      final response = await apiClient.getAllLeaguesFromDb();
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
    try {
      final response = await apiClient.createLeague(league);
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 201) {
        return right(unit);
      } else if (response.statusCode == 400 &&
          responseBody['meassage'] == 'name should not be empty') {
        return left(const LeagueFailure.shortLeagueName());
      } else {
        return left(const LeagueFailure.unexpected());
      }
    } catch (e) {
      return left(const LeagueFailure.unexpected());
    }
  }

  @override
  Future<Either<LeagueFailure, Unit>> updateLeague(League league) async {
    print(league.name.getOrCrash());
    print(league.id.getOrCrash());
    try {
      final response = await apiClient.updateLeague(league);
      print(response.statusCode);
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
    try {
      final response = await apiClient.deleteLeague(league);

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
