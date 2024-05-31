import 'package:FantasyE/infrastructure/avatar/dto/avatar_dtos.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:injectable/injectable.dart';
import 'package:FantasyE/api_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

@injectable
class ApiClient {
  Future<http.Response> fetchData() async {
    final response = await http.get(Uri.parse(ApiConstants.avatarEndpoint));
    return response;
  }

  Stream<http.Response> watchAll() async* {
    final response = await fetchData();
    yield response;
  }

  Future<http.Response> createNewAvatar(Avatar avatar) async {
    final response = await http.post(
      Uri.parse(ApiConstants.avatarEndpoint),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(AvatarDto.fromDomain(avatar).toJson()),
    );
    return response;
  }

  Future<http.Response> updateAvatar(Avatar avatar) async {
    final response = await http.put(
      Uri.parse(ApiConstants.avatarEndpoint + avatar.id.getOrCrash()),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(AvatarDto.fromDomain(avatar).toJson()),
    );
    return response;
  }

  Future<http.Response> deleteAvatar(Avatar avatar) async {
    final response = await http.delete(
      Uri.parse(ApiConstants.avatarEndpoint + avatar.id.getOrCrash()),
    );
    return response;
  }

  Future<http.Response> addAvatar(Avatar avatar) async {
    final response = await http.put(
      Uri.parse(ApiConstants.avatarEndpoint + avatar.id.getOrCrash()),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(AvatarDto.fromDomain(avatar).toJson()),
    );
    return response;
  }
}