import 'package:FantasyE/domain/avatar/value_objects.dart';
import 'package:FantasyE/infrastructure/avatar/repository/avatar_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

import 'avatar_repository_test.mocks.dart';

void main() {
  late MockApiClient mockApiClient;
  late AvatarRepository avatarRepository;

  setUp(() {
    mockApiClient = MockApiClient();
    avatarRepository = AvatarRepository(apiClient: mockApiClient);
  });

  final avatar = Avatar(
    id: UniqueId.fromUniqueString('test_id'),
    avatarName: AvatarName('Test Avatar'),
    avatarScore: AvatarScore('0'),
    avatarClub: AvatarClub('Test Club'),
  );

  group('AvatarRepository', () {
    test('create should return unit on success', () async {
      when(mockApiClient.createNewAvatar(any))
          .thenAnswer((_) async => http.Response('', 201));

      final result = await avatarRepository.create(avatar);

      expect(result, const Right(unit));
    });

    test('update should return unit on success', () async {
      when(mockApiClient.updateAvatar(any))
          .thenAnswer((_) async => http.Response('', 200));

      final result = await avatarRepository.update(avatar);

      expect(result, const Right(unit));
    });

    test('delete should return unit on success', () async {
      when(mockApiClient.deleteAvatar(any))
          .thenAnswer((_) async => http.Response('', 200));

      final result = await avatarRepository.delete(avatar);

      expect(result, const Right(unit));
    });

    test('add should return unit on success', () async {
      when(mockApiClient.addAvatar(any))
          .thenAnswer((_) async => http.Response('', 200));

      final result =
          await avatarRepository.add(UniqueId.fromUniqueString('test_id'));

      expect(result, const Right(unit));
    });

    test('should return unexpected failure when server fails', () async {
      when(mockApiClient.fetchData())
          .thenAnswer((_) async => http.Response('', 500));

      final result = await avatarRepository.watchAll();

      expect(result, const Left(AvatarFailure.unexpected()));
    });
  });
}
