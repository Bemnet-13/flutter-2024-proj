import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';

abstract class ILeagueRepository {
  Stream<Either<LeagueFailure, KtList<League>>> watchAll();
  Stream<Either<LeagueFailure, KtList<League>>> watchByUserId(String userId);
  Future<Either<LeagueFailure, Unit>> create(League league);
  Future<Either<LeagueFailure, Unit>> update(League league);
  Future<Either<LeagueFailure, Unit>> delete(League league);
}
