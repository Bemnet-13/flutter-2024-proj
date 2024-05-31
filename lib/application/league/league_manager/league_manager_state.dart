part of 'league_manager_bloc.dart';

@freezed
class LeagueManagerState with _$LeagueManagerState {
  const factory LeagueManagerState({
    required LeagueName leagueName,
    required UniqueId uniqueId,
    required List<MemberId> members,
    required Option<Either<LeagueFailure, Unit>> operationFailureOrSuccess,
    required bool showErrorMessages,
  }) = _LeagueManagerState;

  factory LeagueManagerState.initial() => LeagueManagerState(
        leagueName: LeagueName(''),
        uniqueId: UniqueId.fromUniqueString(''),
        members: [],
        operationFailureOrSuccess: none(),
        showErrorMessages: false,
      );
}