import 'package:FantasyE/domain/auth/i_auth_facade.dart';
import '../../../api_constants.dart';
import 'package:flutter/services.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/value_objects.dart';
import '../api_client.dart';
import '../dto/signup_dto.dart';
import '../dto/login_dto.dart';

import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  final ApiClient apiClient;
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();
  AuthRepository({
    required this.apiClient,
  });

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Role role,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final roleStr = role.getOrCrash();

    SignupDto signup = SignupDto(
      email: emailAddressStr,
      password: passwordStr,
      name: roleStr,
    );
    print('Signup DTO: ${signup.toJson()}');

    try {
      final response = await apiClient.registerUser(
        ApiConstants.registerEndpoint,
        signup.toJson(),
      );
      final responseBody = jsonDecode(response.body);

      // Assuming the token is stored in a field called 'token'
      final token = responseBody['token'];

      if (token != null) {
        await secureStorage.write(key: 'Token', value: token);
        print('Token stored successfully.');
      } else {
        print('Token is null');
      }

      print('API Response: ${response.statusCode} ${response.body}');

      try {
        final responseBody = jsonDecode(response.body);

        // Parse the response to extract the token
        final token = responseBody['token'];
        if (token == null) {
          throw Exception('Token not found in response');
        }

        return right(unit);
      } catch (e) {
        print('JSON parsing error: $e');
        return left(const AuthFailure.serverError());
      }
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      print('General error: $e');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    LoginDto login = LoginDto(
      email: emailAddressStr,
      password: passwordStr,
    );
    print('Login DTO : ${login.toJson()}');

    try {
      final response = await apiClient.registerUser(
        ApiConstants.loginEndpoint,
        login.toJson(),
      );
      final responseBody = jsonDecode(response.body);

      // Assuming the token is stored in a field called 'token'
      final token = responseBody['token'];

      if (token != null) {
        await secureStorage.write(key: 'Token', value: token);
        print('Token stored successfully.');
      } else {
        print('Token is null');
      }

      print('API Response: ${response.statusCode} ${response.body}');

      try {
        final responseBody = jsonDecode(response.body);

        // Parse the response to extract the token
        final token = responseBody['token'];
        if (token == null) {
          throw Exception('Token not found in response');
        }

        return right(unit);
      } catch (e) {
        print('JSON parsing error: $e');
        return left(const AuthFailure.serverError());
      }
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (e) {
      print('General error: $e');
      return left(const AuthFailure.serverError());
    }
  }
}
