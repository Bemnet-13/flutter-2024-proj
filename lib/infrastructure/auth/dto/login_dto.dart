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

  LoginDto toDomain() {
    return LoginDto(email: email, password: password, role: role);
  }

  factory LoginDto.fromDomain(LoginDto login) {
    return LoginDto(
        email: login.email, password: login.password, role: login.role);
  }
}
