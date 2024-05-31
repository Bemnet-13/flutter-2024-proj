part of 'league_watcher_bloc.dart';

@freezed
class LeagueWatcherEvent with _$LeagueWatcherEvent {
  const factory LeagueWatcherEvent.getAllLeagues() = GetAllLeagues;
}
