// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:FantasyE/application/auth/auth_bloc.dart' as _i15;
import 'package:FantasyE/application/avatar/add_avatar/add_avatar_bloc.dart'
    as _i11;
import 'package:FantasyE/application/avatar/create_avatar/create_avatar_bloc.dart'
    as _i10;
import 'package:FantasyE/application/avatar/delete_avatar/delete_avatar_bloc.dart'
    as _i8;
import 'package:FantasyE/application/avatar/update_avatar/update_avatar_bloc.dart'
    as _i12;
import 'package:FantasyE/domain/auth/i_auth_facade.dart' as _i13;
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart' as _i9;
import 'package:FantasyE/domain/leagues/i_league_repository.dart' as _i4;
import 'package:FantasyE/infrastructure/auth/api_client.dart' as _i3;
import 'package:FantasyE/infrastructure/auth/repository/auth_repository.dart'
    as _i14;
import 'package:FantasyE/infrastructure/avatar/avatar_repository.dart' as _i6;
import 'package:FantasyE/infrastructure/leagues/league_repository.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ApiClient>(() => _i3.ApiClient());
    gh.lazySingleton<_i4.ILeagueRepository>(() => _i5.LeagueRepository());
    gh.lazySingleton<_i6.AvatarRepository>(
      () => _i6.AvatarRepository(gh<_i7.Client>()),
      registerFor: {_prod},
    );
    gh.factory<_i8.DeleteAvatarBloc>(
        () => _i8.DeleteAvatarBloc(gh<_i9.IAvatarRepository>()));
    gh.factory<_i10.CreateAvatarBloc>(
        () => _i10.CreateAvatarBloc(gh<_i9.IAvatarRepository>()));
    gh.factory<_i11.AddAvatarBloc>(
        () => _i11.AddAvatarBloc(gh<_i9.IAvatarRepository>()));
    gh.factory<_i12.UpdateAvatarBloc>(
        () => _i12.UpdateAvatarBloc(gh<_i9.IAvatarRepository>()));
    gh.lazySingleton<_i13.IAuthFacade>(
        () => _i14.AuthRepository(apiClient: gh<_i3.ApiClient>()));
    gh.factory<_i15.SignupFormBloc>(
        () => _i15.SignupFormBloc(gh<_i13.IAuthFacade>()));
    gh.factory<_i15.LoginFormBloc>(
        () => _i15.LoginFormBloc(gh<_i13.IAuthFacade>()));
    return this;
  }
}
