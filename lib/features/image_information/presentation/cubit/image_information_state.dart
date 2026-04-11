import 'package:equatable/equatable.dart';

abstract class ImageInformationState extends Equatable {
  const ImageInformationState();

  @override
  List<Object?> get props => [];
}

class ImageInformationInitialState extends ImageInformationState {}
class ImageInformationSuccessState extends ImageInformationState {}

class ImageInformationErrorState extends ImageInformationState {
  final String message;
  const ImageInformationErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

