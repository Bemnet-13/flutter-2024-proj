part of 'league_manager_bloc.dart';

@freezed
class LeagueManagerEvent with _$LeagueManagerEvent {
  const factory LeagueManagerEvent.nameChanged() = NameChanged;
  const factory LeagueManagerEvent.createLeaguePressed() = CreateLeaguePressed;
  const factory LeagueManagerEvent.updateLeaguePressed() = UpdateLeaguePressed;
  const factory LeagueManagerEvent.deleteLeagueTriggered() =
      DeleteLeagueTriggered;
}
