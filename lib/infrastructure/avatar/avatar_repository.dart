import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/infrastructure/avatar/avatar_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

@prod
@lazySingleton
class AvatarRepository implements IAvatarRepository {
  final http.Client _httpClient;

  AvatarRepository(this._httpClient);

  Future<http.Response> fetchData() async {
    final response = await _httpClient.get(Uri.parse('https://127.0.0.1/players'));
    return response;
  }

  @override
  Stream<Either<AvatarFailure, KtList<Avatar>>> watchAll() async* {
    try {
      final response = await fetchData();
      if (response.statusCode == 200) {
        final List<dynamic> avatarData = jsonDecode(response.body) as List<dynamic>;
        final avatars = avatarData
            .map((data) => AvatarDto.fromJson(data as Map<String, dynamic>).toDomain())
            .toImmutableList();
        yield Right(avatars);
      } else {
        yield const Left(AvatarFailure.unexpected());
      }
    } catch (e) {
      yield const Left(AvatarFailure.unexpected());
    }
  }

  @override
  Future<Either<AvatarFailure, Unit>> create(Avatar avatar) async {
    try {
      final response = await _httpClient.post(
        Uri.parse('https://127.0.0.1/players'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(AvatarDto.fromDomain(avatar).toJson()),
      );
      if (response.statusCode == 201) {
        return const Right(unit);
      } else {
        return const Left(AvatarFailure.unexpected());
      }
    } catch (e) {
      return const Left(AvatarFailure.unexpected());
    }
  }

  @override
  Future<Either<AvatarFailure, Unit>> update(Avatar avatar) async {
    try {
      final response = await _httpClient.put(
        Uri.parse('https://127.0.0.1/players/${avatar.id.getOrCrash()}'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(AvatarDto.fromDomain(avatar).toJson()),
      );
      if (response.statusCode == 200) {
        return const Right(unit);
      } else {
        return const Left(AvatarFailure.unexpected());
      }
    } catch (e) {
      return const Left(AvatarFailure.unexpected());
    }
  }

  @override
  Future<Either<AvatarFailure, Unit>> delete(Avatar avatar) async {
    try {
      final response = await _httpClient.delete(
        Uri.parse('https://127.0.0.1/players/${avatar.id.getOrCrash()}'),
      );
      if (response.statusCode == 200) {
        return const Right(unit);
      } else {
        return const Left(AvatarFailure.unexpected());
      }
    } catch (e) {
      return const Left(AvatarFailure.unexpected());
    }
  }
}
