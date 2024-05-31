class Signup {
  final String name;
  final String email;
  final String password;
  final String role;

  Signup({
    required this.email,
    required this.password,
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'role' : role
    };
  }
}
