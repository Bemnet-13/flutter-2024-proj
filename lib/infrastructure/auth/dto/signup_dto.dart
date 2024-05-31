import 'package:FantasyE/infrastructure/auth/model/signup_model.dart';

class SignupDto {
  final String name;
  final String email;
  final String password;
  final String role;


  SignupDto({required this.email, required this.password, required this.name, required this.role });

  factory SignupDto.fromJson(Map<String, dynamic> json) {
    return SignupDto(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      role: json['role']
    );
  }

  // Method to convert DTO to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'role' : role
    };
  }

  // Method to convert DTO to domain model
  Signup toDomain() {
    return Signup(name: name, email: email, password: password, role: role);
  }

  // Optional: Factory method to create DTO from domain model
  factory SignupDto.fromDomain(Signup signup) {
    return SignupDto(
      name: signup.name,
      email: signup.email,
      password: signup.password,
      role: signup.role
    );
  }
}
