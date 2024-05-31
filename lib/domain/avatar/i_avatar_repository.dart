import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';

abstract class IAvatarRepository {
  Stream<Either<AvatarFailure, KtList<Avatar>>> watchAll();
  Future<Either<AvatarFailure, Unit>> create(Avatar avatar);
  Future<Either<AvatarFailure, Unit>> update(Avatar avatar);
  Future<Either<AvatarFailure, Unit>> delete(Avatar avatar);
  Future<Either<AvatarFailure, Unit>> add(Avatar avatar);
}
