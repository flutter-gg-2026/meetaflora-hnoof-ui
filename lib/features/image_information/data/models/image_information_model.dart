import 'dart:typed_data';

import 'package:meet_flora/features/image_information/domain/entities/image_information_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_information_model.freezed.dart';
part 'image_information_model.g.dart';
//dart run build_runner build
@freezed
abstract class ImageInformationModel with _$ImageInformationModel {
  const factory ImageInformationModel({
   
    required String mimeType,
    required String? name,
    
  }) = _ImageInformationModel;

  factory ImageInformationModel.fromJson(Map<String, Object?> json) => _$ImageInformationModelFromJson(json);
}


extension ImageInformationModelMapper on ImageInformationModel {
  ImageInformationEntity toEntity() {
    return ImageInformationEntity( mimeType: mimeType, name: name);
  }
  }
