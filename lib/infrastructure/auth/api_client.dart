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

  Future<http.Response> updateUserAccount(
      String endpoint, Map<String, dynamic> body, String token) async {
    final url = Uri.parse(endpoint);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    print('ABOUT TO SEND AN API CALL to $url with body: $body');
    final response = await http.put(
      url,
      headers: headers,
      body: jsonEncode(body),
    );
    print('Request sent to $url');
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

  Future<http.Response> deleteUserAccount(
      String endpoint, String userId, String token) async {
    final path = endpoint + userId;
    final url = Uri.parse(path);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.delete(
      url,
      headers: headers,
    );
    print('Request sent to $url');
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

  Future<http.Response> suspendUserAccount(
      String endpoint, String userId, String token, bool isSuspended) async {
    final path = endpoint + userId;
    final url = Uri.parse(path);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.patch(url, headers: headers, body: {
      "isSuspended": isSuspended,
    });
    print('Request sent to $url');
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }
}
