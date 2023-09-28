// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/dio_client.dart' as _i15;
import '../core/network/rest_client.dart' as _i5;
import '../features/app_settings/data/data_provider/remote_app_settings_provider.dart'
    as _i4;
import '../features/app_settings/data/repository/app_settings_repository.dart'
    as _i7;
import '../features/app_settings/domain/interfaces/app_settings_interface.dart'
    as _i6;
import '../features/app_settings/domain/use_cases/get_app_version_use_case.dart'
    as _i8;
import '../features/app_settings/presentation/cubits/cubit/app_version_cubit.dart'
    as _i10;
import '../features/food/data/data_provider/remote_meals_provider.dart' as _i9;
import '../features/food/data/repository/meals_repository.dart' as _i12;
import '../features/food/domain/interfaces/meals_interface.dart' as _i11;
import '../features/food/domain/use_cases/get_meals_use_case.dart' as _i13;
import '../features/food/presentation/cubits/meals_cubit/meals_cubit.dart'
    as _i14;

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
    final dioClient = _$DioClient();
    gh.lazySingleton<_i3.Dio>(() => dioClient.dio);
    gh.factory<_i4.RemoteAppSettingsProvider>(
        () => _i4.RemoteAppSettingsProviderImpl());
    gh.factory<_i5.RestClient>(() => _i5.RestClient(gh<_i3.Dio>()));
    gh.factory<_i6.AppSettingsInterface>(
        () => _i7.AppSettingsRepository(gh<_i4.RemoteAppSettingsProvider>()));
    gh.factory<_i8.GetAppVersionUseCase>(
        () => _i8.GetAppVersionUseCase(gh<_i6.AppSettingsInterface>()));
    gh.factory<_i9.RemoteMealsProvider>(
        () => _i9.RemoteMealsProviderImpl(gh<_i5.RestClient>()));
    gh.factory<_i10.AppVersionCubit>(
        () => _i10.AppVersionCubit(gh<_i8.GetAppVersionUseCase>()));
    gh.factory<_i11.MealsInterface>(
        () => _i12.MealsRepository(gh<_i9.RemoteMealsProvider>()));
    gh.factory<_i13.GetMealsUseCase>(
        () => _i13.GetMealsUseCase(gh<_i11.MealsInterface>()));
    gh.factory<_i14.MealsCubit>(
        () => _i14.MealsCubit(gh<_i13.GetMealsUseCase>()));
    return this;
  }
}

class _$DioClient extends _i15.DioClient {}
