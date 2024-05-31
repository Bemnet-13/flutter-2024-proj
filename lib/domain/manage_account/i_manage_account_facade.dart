import '/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'manage_account_failure.dart';
import '/domain/auth/value_objects.dart';
import '../auth/user.dart';

abstract class IManageAccountFacade {
  Future<Either<ManageAccountFailure, Unit>> updateUserAccount({
    required EmailAddress emailAddress,
    required Password password,
    required Name name,
    required TeamName teamName
  });
  Future<Either<ManageAccountFailure, Unit>> deleteUserAccount(
      {required String userId});
   Future<Either<ManageAccountFailure, Unit>> suspendUserAccount(
     {required String userId, required bool suspensionState});
}
