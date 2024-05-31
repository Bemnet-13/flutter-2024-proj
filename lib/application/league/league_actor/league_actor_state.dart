part of 'league_actor_bloc.dart';

@freezed
class LeagueActorState with _$LeagueActorState {
  const factory LeagueActorState.initial() = _Initial;
  const factory LeagueActorState.createSuccess() = _CreateSuccess;
  const factory LeagueActorState.createFailure(LeagueFailure failure) =
      _CreateFailure;

  const factory LeagueActorState.updateSuccess() = _UpdateSuccess;
  const factory LeagueActorState.updateFailure(LeagueFailure failure) =
      _UpdateFailure;

  const factory LeagueActorState.deleteSuccess() = _DeleteSuccess;
  const factory LeagueActorState.deleteFailure(LeagueFailure failure) =
      _DelteFailure;
}
