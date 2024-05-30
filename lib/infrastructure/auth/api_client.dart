import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:injectable/injectable.dart';

@injectable
class ApiClient {
  Future<http.Response> registerUser(
      String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse(endpoint);
    print('ABOUT TO SEND AN API CALL to $url with body: $body');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );
    print('Request sent to $url');
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }
    Future<http.Response> loginUser(
      String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse(endpoint);
    print('ABOUT TO SEND AN API CALL to $url with body: $body');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );
    print('Request sent to $url');
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }
}
