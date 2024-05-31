import 'dart:convert';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:FantasyE/domain/leagues/league_failure.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/infrastructure/leagues/repository/league_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../api_client.mocks.dart';

void main() {
  late LeagueRepository repository;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    repository = LeagueRepository(mockApiClient);
  });

  group('LeagueRepository', () {
    final league = League(
      id: UniqueId(),
      name: LeagueName('Test League'),
      members: [],
    );

    group('getAllLeagues', () {
      test('should return unexpected failure when the call is unsuccessful',
          () async {
        when(mockApiClient.getAllLeaguesFromDb()).thenAnswer(
            (_) async => http.Response('Something went wrong', 404));

        final result = await repository.getAllLeagues();

        expect(result, const Left(LeagueFailure.unexpected()));
        verify(mockApiClient.getAllLeaguesFromDb()).called(1);
      });
    });

    group('createLeague', () {
      test('should return shortLeagueName failure when name is empty',
          () async {
        final responseBody = {'meassage': 'name should not be empty'};
        when(mockApiClient.createLeague(any)).thenAnswer(
          (_) async => http.Response(jsonEncode(responseBody), 400),
        );

        final result = await repository.createLeague(league);

        expect(result, const Left(LeagueFailure.shortLeagueName()));
        verify(mockApiClient.createLeague(any)).called(1);
      });

      test('should return unexpected failure when the call is unsuccessful',
          () async {
        when(mockApiClient.createLeague(any)).thenAnswer(
            (_) async => http.Response('Something went wrong', 404));

        final result = await repository.createLeague(league);

        expect(result, const Left(LeagueFailure.unexpected()));
        verify(mockApiClient.createLeague(any)).called(1);
      });
    });

    group('updateLeague', () {
      test('should return right(unit) when the call is successful', () async {
        when(mockApiClient.updateLeague(any)).thenAnswer(
          (_) async => http.Response('', 200),
        );

        final result = await repository.updateLeague(league);

        expect(result, const Right(unit));
        verify(mockApiClient.updateLeague(any)).called(1);
      });

      test('should return unableToUpdate failure when the call is unsuccessful',
          () async {
        when(mockApiClient.updateLeague(any)).thenAnswer(
            (_) async => http.Response('Something went wrong', 404));

        final result = await repository.updateLeague(league);

        expect(result, const Left(LeagueFailure.unableToUpdate()));
        verify(mockApiClient.updateLeague(any)).called(1);
      });

      test('should return unexpected failure when an exception occurs',
          () async {
        when(mockApiClient.updateLeague(any)).thenThrow(Exception());

        final result = await repository.updateLeague(league);

        expect(result, const Left(LeagueFailure.unexpected()));
        verify(mockApiClient.updateLeague(any)).called(1);
      });
    });

    group('deleteLeague', () {
      test('should return right(unit) when the call is successful', () async {
        when(mockApiClient.deleteLeague(any)).thenAnswer(
          (_) async => http.Response('', 200),
        );

        final result = await repository.deleteLeague(league);

        expect(result, const Right(unit));
        verify(mockApiClient.deleteLeague(any)).called(1);
      });

      test('should return unableToUpdate failure when the call is unsuccessful',
          () async {
        when(mockApiClient.deleteLeague(any)).thenAnswer(
            (_) async => http.Response('Something went wrong', 404));

        final result = await repository.deleteLeague(league);

        expect(result, const Left(LeagueFailure.unableToUpdate()));
        verify(mockApiClient.deleteLeague(any)).called(1);
      });

      test('should return unexpected failure when an exception occurs',
          () async {
        when(mockApiClient.deleteLeague(any)).thenThrow(Exception());

        final result = await repository.deleteLeague(league);

        expect(result, const Left(LeagueFailure.unexpected()));
        verify(mockApiClient.deleteLeague(any)).called(1);
      });
    });
  });
}
