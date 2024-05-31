import 'package:FantasyE/infrastructure/auth/model/login_model.dart';

class LoginDto {
  final String email;
  final String password;
  final String role;

  LoginDto({required this.email, required this.password, required this.role});

  factory LoginDto.fromJson(Map<String, dynamic> json) {
    return LoginDto(
        email: json['email'], password: json['password'], role: json['role']);
  }

  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password, 'role': role};
  }

  Login toDomain() {
    return Login(email: email, password: password, role: role);
  }

  factory LoginDto.fromDomain(Login login) {
    return LoginDto(
        email: login.email, password: login.password, role: login.role);
  }
}
