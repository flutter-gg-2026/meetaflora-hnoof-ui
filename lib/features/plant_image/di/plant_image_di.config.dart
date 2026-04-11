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
import 'package:meet_flora/core/services/Image_paicker_service.dart' as _i912;
import 'package:meet_flora/core/services/local_keys_service.dart' as _i891;
import 'package:meet_flora/features/plant_image/data/datasources/plant_image_remote_data_source.dart'
    as _i159;
import 'package:meet_flora/features/plant_image/data/repositories/plant_image_repository_data.dart'
    as _i492;
import 'package:meet_flora/features/plant_image/domain/repositories/plant_image_repository_domain.dart'
    as _i834;
import 'package:meet_flora/features/plant_image/domain/use_cases/plant_image_use_case.dart'
    as _i1017;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initPlantImage({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i159.BasePlantImageRemoteDataSource>(
      () => _i159.PlantImageRemoteDataSource(
        gh<_i891.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i834.PlantImageRepositoryDomain>(
      () => _i492.PlantImageRepositoryData(
        gh<_i159.BasePlantImageRemoteDataSource>(),
        imagePickerService: gh<_i912.ImagePaickerService>(),
      ),
    );
    gh.lazySingleton<_i1017.PlantImageUseCase>(
      () => _i1017.PlantImageUseCase(gh<_i834.PlantImageRepositoryDomain>()),
    );
    return this;
  }
}
