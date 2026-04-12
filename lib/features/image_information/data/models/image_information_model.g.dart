// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageInformationModel _$ImageInformationModelFromJson(
  Map<String, dynamic> json,
) => _ImageInformationModel(
  plantName: json['plantName'] as String,
  description: json['description'] as String,
  careTips: json['careTips'] as String,
);

Map<String, dynamic> _$ImageInformationModelToJson(
  _ImageInformationModel instance,
) => <String, dynamic>{
  'plantName': instance.plantName,
  'description': instance.description,
  'careTips': instance.careTips,
};
