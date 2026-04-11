import 'package:fpdart/fpdart.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_flora/core/errors/failure.dart';
import 'package:meet_flora/features/plant_image/domain/entities/plant_image_entity.dart';
import 'package:meet_flora/features/plant_image/domain/repositories/plant_image_repository_domain.dart';


@lazySingleton
class PlantImageUseCase {
  final PlantImageRepositoryDomain _repositoryData;

  PlantImageUseCase(this._repositoryData);

   Future<Result<PlantImageEntity, Failure>> getPlantImage() async {
    return _repositoryData.getPlantImage();
  }
  
  Future<Either<Failure, String>> pickImageFromGallery() async {
    return await _repositoryData.pickImageFromGallery();
  }
  Future<Either<Failure, String>> pickImageFromCamera() async {
    return await _repositoryData.pickImageFromCamera();
  }
}
