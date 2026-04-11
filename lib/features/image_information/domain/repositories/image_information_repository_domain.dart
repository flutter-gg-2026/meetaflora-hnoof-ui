import 'package:multiple_result/multiple_result.dart';
import 'package:meet_flora/core/errors/failure.dart';
import 'package:meet_flora/features/image_information/domain/entities/image_information_entity.dart';

abstract class ImageInformationRepositoryDomain {
    Future<Result<ImageInformationEntity, Failure>> getImageInformation();
}
