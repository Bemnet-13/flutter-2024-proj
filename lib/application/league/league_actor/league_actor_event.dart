part of 'league_actor_bloc.dart';

@freezed
class LeagueActorEvent with _$LeagueActorEvent {
  const factory LeagueActorEvent.leagueNameChanged() = LeagueNameChanged;
  const factory LeagueActorEvent.createLeaguePressed() = _CreateLeaguePressed;
  const factory LeagueActorEvent.updateLeaguePressed() = _UpdateLeaguePressed;
  const factory LeagueActorEvent.deleteLeagueTrigered() =
      _DeleteLeagueTriggered;
}
