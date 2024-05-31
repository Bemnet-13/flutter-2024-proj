import 'package:FantasyE/api_constants.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/infrastructure/avatar/dto/avatar_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import '../api_client.dart';
import 'package:dartz/dartz.dart';
import 'dart:convert';

@LazySingleton(as: IAvatarRepository)
class AvatarRepository implements IAvatarRepository {
  final ApiClient apiClient;
  AvatarRepository({required this.apiClient});
  @override
  Future<Either<AvatarFailure, List<Avatar>>> watchAll() async {
    try {
      final response = await apiClient.fetchData();
      print(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        final List<AvatarDto> avatarDtos =
            responseBody.map((json) => AvatarDto.fromJson(json)).toList();
        print(avatarDtos);
        final List<Avatar> avatars =
            avatarDtos.map((dto) => dto.toDomain()).toList();
        print(avatars);
        print(435);
        return Right(avatars);
      } else {
        return const Left(AvatarFailure.unexpected());
      }
    } catch (e) {
      return const Left(AvatarFailure.unexpected());
    }
  }

  @override
  Future<Either<AvatarFailure, Unit>> create(Avatar avatar) async {
    try {
      final response = await apiClient.createNewAvatar(avatar);
      print(avatar.avatarClub);
      print(avatar.avatarName);
      print(avatar.avatarScore);

      print(response.body);
      print(response.statusCode);
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
      final response = await apiClient.updateAvatar(avatar);
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
      final response = await apiClient.deleteAvatar(avatar);
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
  Future<Either<AvatarFailure, Unit>> add(UniqueId avatarId) async {
    try {
      final response = await apiClient.addAvatar(avatarId);
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
