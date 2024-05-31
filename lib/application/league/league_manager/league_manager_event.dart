part of 'league_manager_bloc.dart';

@freezed
class LeagueManagerEvent with _$LeagueManagerEvent {
  const factory LeagueManagerEvent.nameChanged(String nameStr) = NameChanged;
  const factory LeagueManagerEvent.idSet(UniqueId id) = IdSet;
  const factory LeagueManagerEvent.leagueSelected(LeagueName name, UniqueId id, List<MemberId> members) =
      LeagueSelected;
  const factory LeagueManagerEvent.createLeaguePressed() = CreateLeaguePressed;
  const factory LeagueManagerEvent.updateLeaguePressed() = UpdateLeaguePressed;
  const factory LeagueManagerEvent.deleteLeagueTriggered() =
      DeleteLeagueTriggered;
}
