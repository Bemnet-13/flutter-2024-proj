import 'dart:math';

import 'package:FantasyE/domain/auth/i_auth_facade.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import '../../../api_constants.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/value_objects.dart';
import '../api_client.dart';
import '../dto/signup_dto.dart';
import '../dto/login_dto.dart';
import 'package:FantasyE/domain/auth/user.dart';
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final ApiClient apiClient;
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  AuthRepository({
    required this.apiClient,
  });

  @override
  Future<Option<User>> getSignedInUser() async {
    String? token = await secureStorage.read(key: 'Token');
    String? role = await secureStorage.read(key: 'Role');

    if (token != null && role != null) {
      role = role == 'user' ? 'PLAYER' : 'ADMIN';
      return some(
          User(token: UniqueId.fromUniqueString(token), role: Role(role)));
    } else {
      return none();
    }
  }

  @override
  Future<void> logOut() async {
    await secureStorage.delete(key: 'Token');
    await secureStorage.delete(key: 'Role');
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required Role role,
      required Name name}) async {
    final nameStr = name.getOrCrash();
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final roleStr = role.getOrCrash() == 'PLAYER' ? 'user' : 'admin';

    SignupDto signup = SignupDto(
      name: nameStr,
      email: emailAddressStr,
      password: passwordStr,
      role: roleStr,
    );
    print(signup.name);
    print(signup.email);
    print(signup.password);
    print(signup.role);

    try {
      final response = await apiClient.registerUser(
        ApiConstants.registerEndpoint,
        signup.toJson(),
      );
      final responseBody = jsonDecode(response.body);
      print('API Response: ${response.statusCode} ${response.body}');

      if (response.statusCode == 500 ||
          responseBody['message'] == 'Internal server error') {
        return left(const AuthFailure.serverError());
      } else if (response.statusCode == 401 ||
          responseBody['message'] == 'Email already in use.') {
        return left(const AuthFailure.emailAlreadyInUse());
      }
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Role role,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final roleStr = role.getOrCrash() == 'PLAYER' ? 'user' : 'admin';

    LoginDto login =
        LoginDto(email: emailAddressStr, password: passwordStr, role: roleStr);

    print(login);

    try {
      final response = await apiClient.registerUser(
        ApiConstants.loginEndpoint,
        login.toJson(),
      );
      final responseBody = jsonDecode(response.body);
      final token = responseBody['token'];
      final id = responseBody['userId'];
      print('API Response: ${response.statusCode} ${response.body}');

      if (response.statusCode == 500 ||
          responseBody['message'] == 'Internal server error') {
        return left(const AuthFailure.serverError());
      } else if (response.statusCode == 401 &&
          responseBody['message'] == 'Invalid email or password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (response.statusCode == 401 &&
          responseBody['message'] ==
              'Wrong Role. Role not matched correctly.') {
        return left(const AuthFailure.invalidRoleUsedInLogin());
      } else if (response.statusCode == 401) {
        return left(const AuthFailure.accountSuspended());
      } else if (token != null) {
        await secureStorage.write(key: 'Role', value: roleStr);
        await secureStorage.write(key: 'Token', value: token);
        await secureStorage.write(key: 'id', value: id);
      }
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
