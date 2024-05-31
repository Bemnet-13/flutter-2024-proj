part of 'league_watcher_bloc.dart';

@freezed
class LeagueWatcherState with _$LeagueWatcherState {
  const factory LeagueWatcherState.initial() = _Initial;
  const factory LeagueWatcherState.loadInProgress() = LoadInProgress;
  const factory LeagueWatcherState.loadSuccess(List<League> leagues) = LoadSuccess;
  const factory LeagueWatcherState.loadFailure(LeagueFailure failure) = LoadFailure;
}