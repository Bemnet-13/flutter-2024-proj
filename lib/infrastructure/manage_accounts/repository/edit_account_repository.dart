import 'package:FantasyE/domain/auth/user.dart';
import 'package:FantasyE/domain/manage_account/i_manage_account_facade.dart';
import '../../../api_constants.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/value_objects.dart';
import '../../auth/api_client.dart';
import '../dto/edit_account_dto.dart';
import 'package:FantasyE/domain/manage_account/manage_account_failure.dart';
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@LazySingleton(as: IManageAccountFacade)
class AccountManagementRepository implements IManageAccountFacade {
  final ApiClient apiClient;
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();
  AccountManagementRepository({
    required this.apiClient,
  });

  @override
  Future<Either<ManageAccountFailure, List<UserDetails>>> getAllUsers() async {
    try {
      String? token = await secureStorage.read(key: 'Token');
      if (token == null) {
        return left(const ManageAccountFailure.serverError());
      }
      final response = await apiClient.getAllUsers(token);
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        final List<UserDetailsDto> userDtos =
            responseBody.map((json) => UserDetailsDto.fromJson(json)).toList();
        final List<UserDetails> usersDetails =
            userDtos.map((dto) => dto.toDomain()).toList();
        return right(usersDetails);
      } else {
        return left(const ManageAccountFailure.serverError());
      }
    } catch (e) {
      return left(const ManageAccountFailure.serverError());
    }
  }

  @override
  Future<Either<ManageAccountFailure, Unit>> updateUserAccount(
      {required EmailAddress emailAddress,
      required Password password,
      required Name name,
      required TeamName teamName}) async {
    final nameStr = name.getOrCrash();
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final teamNameStr = teamName.getOrCrash();
    String? token = await secureStorage.read(key: 'Token');
    String? role = await secureStorage.read(key: 'Role');

    if (token == null) {
      return left(const ManageAccountFailure.serverError());
    }

    EditAccountDto accountDto = EditAccountDto(
        email: emailAddressStr,
        password: passwordStr,
        name: nameStr,
        teamName: teamNameStr,
        role: role);

    try {
      final response = await apiClient.updateUserAccount(
          ApiConstants.editAccountEndpoint, accountDto.toJson(), token);
      final responseBody = jsonDecode(response.body);

      print('API Response: ${response.statusCode} ${response.body}');

      if (response.statusCode == 500 ||
          responseBody['message'] == 'Internal server error') {
        return left(const ManageAccountFailure.serverError());
      } else if (response.statusCode == 401 ||
          responseBody['message'] == 'Email already in use.') {
        return left(const ManageAccountFailure.emailAlreadyInUse());
      } else if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ManageAccountFailure.serverError());
      }
    } catch (e) {
      return left(const ManageAccountFailure.serverError());
    }
  }

  @override
  Future<Either<ManageAccountFailure, Unit>> deleteUserAccount(
      {required String userId}) async {
    String? token = await secureStorage.read(key: 'Token');
    if (token == null) {
      return left(const ManageAccountFailure.serverError());
    }
    try {
      final response = await apiClient.deleteUserAccount(
          ApiConstants.deleteAccountEndpoint, userId, token);

      final responseBody = jsonDecode(response.body);
      print('API Response: ${response.statusCode} ${response.body}');
      if (response.statusCode == 500 ||
          responseBody['message'] == 'Internal server error') {
        return left(const ManageAccountFailure.serverError());
      } else if (response.statusCode == 404) {
        return left(const ManageAccountFailure.unsuccessfulDeletion());
      } else if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ManageAccountFailure.serverError());
      }
    } catch (e) {
      return left(const ManageAccountFailure.serverError());
    }
  }

  @override
  Future<Either<ManageAccountFailure, Unit>> suspendUserAccount(
      {required String userId, required bool suspensionState}) async {
    String? token = await secureStorage.read(key: 'Token');
    if (token == null) {
      return left(const ManageAccountFailure.serverError());
    }
    try {
      final response = await apiClient.suspendUserAccount(
          ApiConstants.suspendAccountEndpoint, userId, token, suspensionState);
      final responseBody = jsonDecode(response.body);
      print('API Response: ${response.statusCode} ${response.body}');
      if (response.statusCode == 500 ||
          responseBody['message'] == 'Internal server error') {
        return left(const ManageAccountFailure.serverError());
      } else if (response.statusCode >= 400 && response.statusCode < 500) {
        return left(const ManageAccountFailure.invalidSuspension());
      } else if (response.statusCode >= 200) {
        return right(unit);
      } else {
        return left(const ManageAccountFailure.serverError());
      }
    } catch (e) {
      return left(const ManageAccountFailure.serverError());
    }
  }
}
