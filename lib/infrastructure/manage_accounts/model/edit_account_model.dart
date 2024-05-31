class EditAccountModel {
  final String name;
  final String email;
  final String password;
  final String teamName;
  final String? role;

  EditAccountModel({
    required this.email,
    required this.password,
    required this.name,
    required this.teamName,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'team': teamName,
      'role': role,
    };
  }
}
