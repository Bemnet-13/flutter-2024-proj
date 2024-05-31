// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:FantasyE/application/auth/auth_bloc.dart' as _i18;
import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart'
    as _i19;
import 'package:FantasyE/application/avatar/add_avatar/add_avatar_bloc.dart'
    as _i12;
import 'package:FantasyE/application/avatar/create_avatar/create_avatar_bloc.dart'
    as _i14;
import 'package:FantasyE/application/avatar/delete_avatar/delete_avatar_bloc.dart'
    as _i15;
import 'package:FantasyE/application/avatar/update_avatar/update_avatar_bloc.dart'
    as _i16;
import 'package:FantasyE/application/manage_account/manage_account_bloc.dart'
    as _i17;
import 'package:FantasyE/domain/auth/i_auth_facade.dart' as _i8;
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart' as _i13;
import 'package:FantasyE/domain/leagues/i_league_repository.dart' as _i4;
import 'package:FantasyE/domain/manage_account/i_manage_account_facade.dart'
    as _i10;
import 'package:FantasyE/infrastructure/api_client.dart' as _i3;
import 'package:FantasyE/infrastructure/auth/repository/auth_repository.dart'
    as _i9;
import 'package:FantasyE/infrastructure/avatar/avatar_repository.dart' as _i6;
import 'package:FantasyE/infrastructure/leagues/league_repository.dart' as _i5;
import 'package:FantasyE/infrastructure/manage_accounts/repository/edit_account_repository.dart'
    as _i11;
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
    gh.lazySingleton<_i8.IAuthFacade>(
        () => _i9.AuthRepository(apiClient: gh<_i3.ApiClient>()));
    gh.lazySingleton<_i10.IManageAccountFacade>(
        () => _i11.AccountManagementRepository(apiClient: gh<_i3.ApiClient>()));
    gh.factory<_i12.AddAvatarBloc>(
        () => _i12.AddAvatarBloc(gh<_i13.IAvatarRepository>()));
    gh.factory<_i14.CreateAvatarBloc>(
        () => _i14.CreateAvatarBloc(gh<_i13.IAvatarRepository>()));
    gh.factory<_i15.DeleteAvatarBloc>(
        () => _i15.DeleteAvatarBloc(gh<_i13.IAvatarRepository>()));
    gh.factory<_i16.UpdateAvatarBloc>(
        () => _i16.UpdateAvatarBloc(gh<_i13.IAvatarRepository>()));
    gh.factory<_i17.ManageAccountBloc>(
        () => _i17.ManageAccountBloc(gh<_i10.IManageAccountFacade>()));
    gh.factory<_i18.SignupFormBloc>(
        () => _i18.SignupFormBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i18.LoginFormBloc>(
        () => _i18.LoginFormBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i19.AuthLogicBloc>(
        () => _i19.AuthLogicBloc(gh<_i8.IAuthFacade>()));
    return this;
  }
}