import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'package:FantasyE/domain/core/entity.dart';
import 'package:FantasyE/domain/core/failures.dart';
import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';

part 'league.freezed.dart';

@freezed
abstract class League with _$League implements IEntity {
  const factory League({
    required UniqueId id,
    required LeagueName name,
    required ListVO<MemberId> members,
  }) = _League;

  factory League.empty() => League(
        id: UniqueId(),
        name: LeagueName(''),
        members: ListVO(emptyList()),
      );
}

// extension LeagueX on League {
//   Option<ValueFailure<dynamic>> get failureOption {
//     return name.failureOrUnit
//         .andThen(members.failureOrUnit)
//         .andThen(
//           members
//               .getOrCrash()
//               .map((memberId) => memberId.failureOption)
//               .filter((o) => o.isSome())
//               .getOrElse(0, (_) => none())
//               .fold(() => right(unit), (f) => left(f)),
//         )
//         .fold((f) => some(f), (_) => none());
//   }
// } 