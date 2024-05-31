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
  Future<Either<AvatarFailure, KtList<Avatar>>> watchAll() async {
    try {
      final response = await apiClient.fetchData();
      if (response.statusCode == 200) {
        final List<dynamic> avatarData =
            jsonDecode(response.body) as List<dynamic>;
        final avatars = avatarData
            .map((data) =>
                AvatarDto.fromJson(data as Map<String, dynamic>).toDomain())
            .toImmutableList();
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
