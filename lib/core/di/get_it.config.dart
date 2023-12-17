// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:personal_library/core/di/register_module.dart' as _i5;
import 'package:personal_library/presentation/message_list/bloc/message_list_cubit.dart'
    as _i4;
import 'package:telephony/telephony.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.singletonAsync<_i3.Telephony>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.MessageListCubit>(
        () => _i4.MessageListCubit(gh<_i3.Telephony>()));
    return this;
  }
}

class _$RegisterModule extends _i5.RegisterModule {}
