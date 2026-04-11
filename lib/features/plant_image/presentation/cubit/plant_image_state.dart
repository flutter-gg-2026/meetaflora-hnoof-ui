import 'package:equatable/equatable.dart';

abstract class PlantImageState extends Equatable {
  const PlantImageState();

  @override
  List<Object?> get props => [];
}

class PlantImageInitialState extends PlantImageState {}

class PlantImageLoadingState extends PlantImageState {}

// to get the path of image
class PlantImageSuccessState extends PlantImageState {
  final String imagePath;

  const PlantImageSuccessState({required this.imagePath});
}

class PlantImageErrorState extends PlantImageState {
  final String message;
  const PlantImageErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
