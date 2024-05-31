import 'package:FantasyE/domain/auth/user.dart';
import 'package:FantasyE/domain/auth/value_objects.dart';
import 'package:FantasyE/domain/core/value_objects.dart';

import '../model/edit_account_model.dart';

class EditAccountDto {
  final String name;
  final String email;
  final String password;
  final String teamName;
  final String? role;

  EditAccountDto(
      {required this.email,
      required this.password,
      required this.name,
      required this.teamName,
      required this.role});

  factory EditAccountDto.fromJson(Map<String, dynamic> json) {
    return EditAccountDto(
        name: json['name'],
        email: json['email'],
        password: json['password'],
        role: json['role'],
        teamName: json['team']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'team': teamName,
      'role': role
    };
  }

  EditAccountModel toDomain() {
    return EditAccountModel(
        name: name,
        email: email,
        password: password,
        teamName: teamName,
        role: role);
  }

  factory EditAccountDto.fromDomain(EditAccountModel account) {
    return EditAccountDto(
        name: account.name,
        email: account.email,
        password: account.password,
        role: account.role,
        teamName: account.teamName);
  }
}

class UserDetailsDto {
  final String id;
  final String name;
  final String email;
  final String role;
  final bool isSuspended;

  UserDetailsDto({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.isSuspended,
  });

  Map<String, dynamic> toJson() {
    return {'_id': id, 'name': name, 'email': email, 'role': role};
  }

  factory UserDetailsDto.fromJson(Map<String, dynamic> json) {
    return UserDetailsDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      isSuspended: json['isSuspended'] as bool,
    );
  }

  UserDetails toDomain() {
    return UserDetails(
        emailAddress: EmailAddress(email),
        name: Name(name),
        id: UniqueId.fromUniqueString(id),
        isSuspended: isSuspended,
        role: Role(role == 'admin' ? 'ADMIN' : 'PLAYER'));
  }
}
