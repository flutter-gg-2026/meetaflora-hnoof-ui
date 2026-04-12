import 'package:equatable/equatable.dart';

class ImageInformationEntity extends Equatable {

  final String plantName;
  final String description;
  final String careTips;

  const ImageInformationEntity({
required this.plantName,
    required this.description,
    required this.careTips,
  });

  @override
  List<Object?> get props => [ plantName, description,careTips];
}
