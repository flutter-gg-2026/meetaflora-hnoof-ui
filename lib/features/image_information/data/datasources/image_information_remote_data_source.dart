import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:meet_flora/core/network/dio_client.dart';
import 'package:meet_flora/core/network/gemni_api.dart';
import 'package:meet_flora/features/image_information/data/models/image_information_model.dart';
import 'package:meet_flora/core/errors/network_exceptions.dart';


abstract class BaseImageInformationRemoteDataSource {
  Future<ImageInformationModel> getImageInformation({
    required File file,
  });
}

@LazySingleton(as: BaseImageInformationRemoteDataSource)
class ImageInformationRemoteDataSource
    implements BaseImageInformationRemoteDataSource {
  final DioClient _dioClient;

  ImageInformationRemoteDataSource(this._dioClient);

  @override
  Future<ImageInformationModel> getImageInformation({
    required File file,
  }) async {
    try {
      final responseText = await _dioClient.analyzePlantImage(file: file);

      return ImageInformationModel(
        plantName: 'Plant Result',
        description: responseText,
        careTips: responseText,
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }}