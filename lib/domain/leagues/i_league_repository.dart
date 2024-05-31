import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';

abstract class ILeagueRepository {
  Future<Either<LeagueFailure, List<League>>> getAllLeagues();
  Future<Either<LeagueFailure, Unit>> createLeague(League league);
  Future<Either<LeagueFailure, Unit>> updateLeague(League league);
  Future<Either<LeagueFailure, Unit>> deleteLeague(League league);
}
