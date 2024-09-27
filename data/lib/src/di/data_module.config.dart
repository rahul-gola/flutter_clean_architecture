// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/src/di/network_module.dart' as _i377;
import 'package:data/src/network/retrofit_service.dart' as _i1066;
import 'package:data/src/util/api_interceptor.dart' as _i519;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initDataModule({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.singleton<_i528.PrettyDioLogger>(() => networkModule.logger());
    gh.singleton<_i519.ApiInterceptor>(
        () => networkModule.provideApiInterceptor());
    gh.singleton<List<_i361.Interceptor>>(
        () => networkModule.providerInterceptors(gh<_i519.ApiInterceptor>()));
    gh.lazySingleton<_i361.Dio>(
        () => networkModule.providerDio(gh<List<_i361.Interceptor>>()));
    gh.lazySingleton<_i1066.RetrofitService>(
        () => networkModule.providerRetrofitService(gh<_i361.Dio>()));
    return this;
  }
}

class _$NetworkModule extends _i377.NetworkModule {}