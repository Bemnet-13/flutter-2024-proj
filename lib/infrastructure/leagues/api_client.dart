import 'dart:convert';
import 'package:FantasyE/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:FantasyE/domain/leagues/league.dart';

@injectable
class ApiClient {
  final token = const FlutterSecureStorage();
  final url = Uri.parse(ApiConstants.leagueEndpoint);

  Future<http.Response> getAllLeaguesFromDb() async {
    String? tokenValue = await token.read(key: 'Token');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };

    final response = await http.get(
      url,
      headers: headers,
    );
    return response;
  }

  Future<http.Response> createLeague(League league) async {
    String? tokenValue = await token.read(key: 'Token');

    final leagueName = league.name.getOrCrash();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };

    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode({'name': leagueName}),
    );
    return response;
  }

  Future<http.Response> updateLeague(League league) async {
    String? tokenValue = await token.read(key: 'Token');
    final id = league.id.getOrCrash();
    final leagueName = league.name.getOrCrash();

    final endpoint = Uri.parse(ApiConstants.leagueEndpoint + id);
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };
    final response = await http.put(
      endpoint,
      headers: headers,
      body: jsonEncode({'name': leagueName}),
    );
    return response;
  }

  Future<http.Response> deleteLeague(League league) async {
    String? tokenValue = await token.read(key: 'Token');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $tokenValue',
    };
    final id = league.id.getOrCrash();
    final endpoint = Uri.parse(ApiConstants.leagueEndpoint + id);
    final response = await http.delete(
      endpoint,
      headers: headers,
    );
    return response;
  }
}
