import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/domain/avatar/avatar_failure.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'avatar_watcher_event.dart';
part 'avatar_watcher_state.dart';
part 'avatar_watcher_bloc.freezed.dart';

@injectable
class AvatarWatcherBloc extends Bloc<AvatarWatcherEvent, AvatarWatcherState> {
  IAvatarRepository repository;

  AvatarWatcherBloc(this.repository)
      : super(const AvatarWatcherState.initial()) {
    on<GetAllAvatars>((event, emit) async{
      emit(const AvatarWatcherState.loadInProgress());
      await repository.watchAll().then(
        (value) {
          value.fold(
            (f) => emit(AvatarWatcherState.loadFailure(f)),
            (r) => emit(AvatarWatcherState.loadSuccess(r as List<Avatar>)),
          );
        },
      );
    });
  }
}
