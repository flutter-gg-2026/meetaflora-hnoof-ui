
import 'dart:io';

import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_flora/core/services/Image_paicker_service.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meet_flora/core/errors/network_exceptions.dart';
import 'package:meet_flora/core/errors/failure.dart';
import 'package:meet_flora/features/plant_image/domain/entities/plant_image_entity.dart';

import 'package:meet_flora/features/plant_image/data/datasources/plant_image_remote_data_source.dart';
import 'package:meet_flora/features/plant_image/data/models/plant_image_model.dart';
import 'package:meet_flora/features/plant_image/domain/repositories/plant_image_repository_domain.dart';

@LazySingleton(as: PlantImageRepositoryDomain)
class PlantImageRepositoryData implements PlantImageRepositoryDomain{// if i add any kind of header of must be override it   
  final BasePlantImageRemoteDataSource remoteDataSource;
    final ImagePaickerService  imagePickerService;


  PlantImageRepositoryData(this.remoteDataSource, {required this.imagePickerService});

@override
  Future<Result<PlantImageEntity, Failure>> getPlantImage() async {
    try {
      final response = await remoteDataSource.getPlantImage();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Either<Failure, String>> pickImageFromCamera()async {
    try{ 
     final File? image = await imagePickerService.pickFromCamera();

      if (image == null) {
        return left(const CameraFailure('Camera action cancelled'));
      }

      return right(image.path);
    } catch (_) {
      return left(const CameraFailure());
    }
  }
   

  @override
  Future<Either<Failure, String>> pickImageFromGallery()async {
 try {
      final File? image = await imagePickerService.pickFromGallery();

      if (image == null) {
        return left(const GalleryFailure('Gallery action cancelled'));
      }

      return right(image.path);
    } catch (_) {
      return left(const GalleryFailure());   }
  }
}
/*
  @override
  Future<Either<Failure, String>> pickImageFromCamera() async {
    try {
      final XFile? image = await dataSource.pickImageFromCamera();

      if (image == null) {
        return left(const CameraFailure('Camera action cancelled'));
      }

      return right(image.path);
    } catch (_) {
      return left(const CameraFailure());
    }
  }

  @override
  Future<Either<Failure, String>> pickImageFromGallery() async {
    try {
      final XFile? image = await dataSource.pickImageFromGallery();

      if (image == null) {
        return left(const GalleryFailure('Gallery action cancelled'));
      }

      return right(image.path);
    } catch (_) {
      return left(const GalleryFailure());
    }
  }
} */