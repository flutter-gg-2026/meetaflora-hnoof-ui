import 'package:meet_flora/features/plant_image/domain/entities/plant_image_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'plant_image_model.freezed.dart';
part 'plant_image_model.g.dart';

@freezed
abstract class PlantImageModel with _$PlantImageModel {
  const factory PlantImageModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _PlantImageModel;

  factory PlantImageModel.fromJson(Map<String, Object?> json) => _$PlantImageModelFromJson(json);
}



extension PlantImageModelMapper on PlantImageModel {
  PlantImageEntity toEntity() {
    return PlantImageEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
