
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_flora/core/errors/network_exceptions.dart';
import 'package:meet_flora/core/errors/failure.dart';
import 'package:meet_flora/features/image_information/domain/entities/image_information_entity.dart';

import 'package:meet_flora/features/image_information/data/datasources/image_information_remote_data_source.dart';
import 'package:meet_flora/features/image_information/data/models/image_information_model.dart';
import 'package:meet_flora/features/image_information/domain/repositories/image_information_repository_domain.dart';

@LazySingleton(as: ImageInformationRepositoryDomain)
class ImageInformationRepositoryData implements ImageInformationRepositoryDomain{
  final BaseImageInformationRemoteDataSource remoteDataSource;


  ImageInformationRepositoryData(this.remoteDataSource);

@override
  Future<Result<ImageInformationEntity, Failure>> getImageInformation() async {
    try {
      final response = await remoteDataSource.getImageInformation();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
