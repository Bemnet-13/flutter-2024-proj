import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';

abstract class ILeagueRepository {
  Future<Either<LeagueFailure, Unit>> create(League league);
  Future<Either<LeagueFailure, Unit>> update(League league);
  Future<Either<LeagueFailure, Unit>> delete(League league);
}
