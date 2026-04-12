import 'dart:io';

import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_flora/core/errors/failure.dart';
import 'package:meet_flora/features/image_information/domain/entities/image_information_entity.dart';
import 'package:meet_flora/features/image_information/domain/repositories/image_information_repository_domain.dart';


@lazySingleton
class ImageInformationUseCase {
  final ImageInformationRepositoryDomain _repository;

  ImageInformationUseCase(this._repository);

  Future<Result<ImageInformationEntity, Failure>> getImageInformation({
    required File file,
  }) async {
    return _repository.getImageInformation(file: file);
  }
}