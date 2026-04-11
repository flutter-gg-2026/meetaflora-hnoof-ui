// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantImageModel _$PlantImageModelFromJson(Map<String, dynamic> json) =>
    _PlantImageModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$PlantImageModelToJson(_PlantImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
