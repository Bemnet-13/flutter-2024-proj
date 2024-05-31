class SignupDto {
  final String name;
  final String email;
  final String password;
  final String role;

  SignupDto(
      {required this.email,
      required this.password,
      required this.name,
      required this.role});

  factory SignupDto.fromJson(Map<String, dynamic> json) {
    return SignupDto(
        name: json['name'],
        email: json['email'],
        password: json['password'],
        role: json['role']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'password': password, 'role': role};
  }

  SignupDto toDomain() {
    return SignupDto(name: name, email: email, password: password, role: role);
  }

  factory SignupDto.fromDomain(SignupDto signup) {
    return SignupDto(
        name: signup.name,
        email: signup.email,
        password: signup.password,
        role: signup.role);
  }
}
