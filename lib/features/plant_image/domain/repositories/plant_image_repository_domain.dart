import 'package:multiple_result/multiple_result.dart';
import 'package:meet_flora/core/errors/failure.dart';
import 'package:meet_flora/features/plant_image/domain/entities/plant_image_entity.dart';
import 'package:fpdart/fpdart.dart';
abstract class PlantImageRepositoryDomain {
    Future<Result<PlantImageEntity, Failure>> getPlantImage();
    Future<Either<Failure, String>> pickImageFromCamera();
    Future<Either<Failure, String>> pickImageFromGallery();
}
