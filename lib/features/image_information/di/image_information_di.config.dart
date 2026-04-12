// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:meet_flora/core/network/dio_client.dart' as _i68;
import 'package:meet_flora/features/image_information/data/datasources/image_information_remote_data_source.dart'
    as _i686;
import 'package:meet_flora/features/image_information/data/repositories/image_information_repository_data.dart'
    as _i828;
import 'package:meet_flora/features/image_information/domain/repositories/image_information_repository_domain.dart'
    as _i546;
import 'package:meet_flora/features/image_information/domain/use_cases/image_information_use_case.dart'
    as _i1019;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initImageInformation({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i686.BaseImageInformationRemoteDataSource>(
      () => _i686.ImageInformationRemoteDataSource(gh<_i68.DioClient>()),
    );
    gh.lazySingleton<_i546.ImageInformationRepositoryDomain>(
      () => _i828.ImageInformationRepositoryData(
        gh<_i686.BaseImageInformationRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i1019.ImageInformationUseCase>(
      () => _i1019.ImageInformationUseCase(
        gh<_i546.ImageInformationRepositoryDomain>(),
      ),
    );
    return this;
  }
}
