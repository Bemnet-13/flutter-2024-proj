class Login {
  final String email;
  final String password;
  final String role;

  Login({
    required this.email,
    required this.password,
    required this.role
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'role' : role
    };
  }
}
