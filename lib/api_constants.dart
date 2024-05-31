class ApiConstants {
  static const String baseUrl = "http://10.0.2.2:3000";
  static const String loginEndpoint = "$baseUrl/auth/login";
  static const String registerEndpoint = "$baseUrl/auth/signup";
  static const String editAccountEndpoint = "$baseUrl/auth";
  static const String deleteAccountEndpoint = "$baseUrl/auth/user/";
  static const String suspendAccountEndpoint = "$baseUrl/auth/suspend";
}
