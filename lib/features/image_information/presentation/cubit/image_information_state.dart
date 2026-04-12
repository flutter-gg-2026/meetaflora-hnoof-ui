import 'package:equatable/equatable.dart';
import 'package:meet_flora/features/image_information/domain/entities/image_information_entity.dart';

abstract class ImageInformationState extends Equatable {
  const ImageInformationState();

  @override
  List<Object?> get props => [];
}
class ImageInformationInitialState extends ImageInformationState {}

class ImageInformationLoadingState extends ImageInformationState {}

class ImageInformationSuccessState extends ImageInformationState {
  final ImageInformationEntity data;

  const ImageInformationSuccessState({required this.data});

  @override
  List<Object?> get props => [data];
}

class ImageInformationErrorState extends ImageInformationState {
  final String message;

  const ImageInformationErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
