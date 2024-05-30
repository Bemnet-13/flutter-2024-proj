import 'package:faq/infrastructure/auth/model/signup_model.dart';

class SignupDto {
  final String name;
  final String email;
  final String password;

  SignupDto({required this.email, required this.password, required this.name});

    factory SignupDto.fromJson(Map<String, dynamic> json) {
    return SignupDto(
      name: json['id'],
      email: json['email'],
      password: json['password'],
    );
  }

  // Method to convert DTO to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email':email,
      'password': password,
    };
  }

  // Method to convert DTO to domain model
  Signup toDomain() {
    return Signup(
      name: name,
      email: email,
      password: password
    );
  }

  // Optional: Factory method to create DTO from domain model
  factory SignupDto.fromDomain(Signup signup) {
    return SignupDto(
      name: signup.name,
      email: signup.email,
      password: signup.password,
    );
  }
}

