import '../model/edit_account_model.dart';

class EditAccountDto {
  final String name;
  final String email;
  final String password;
  final String teamName;
  final String? role;

  EditAccountDto({
    required this.email,
    required this.password,
    required this.name,
    required this.teamName,
    required this.role
  });

  factory EditAccountDto.fromJson(Map<String, dynamic> json) {
    return EditAccountDto(
        name: json['name'],
        email: json['email'],
        password: json['password'],
        role : json['role'],
        teamName: json['team']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'team': teamName,
      'role' : role
    };
  }

  EditAccountModel toDomain() {
    return EditAccountModel(
        name: name, email: email, password: password, teamName: teamName, role : role);
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
