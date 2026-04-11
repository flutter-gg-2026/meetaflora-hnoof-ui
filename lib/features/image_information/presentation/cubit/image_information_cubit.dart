import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_flora/features/image_information/domain/use_cases/image_information_use_case.dart';
import 'package:meet_flora/features/image_information/presentation/cubit/image_information_state.dart';

class ImageInformationCubit extends Cubit<ImageInformationState> {
  final ImageInformationUseCase _imageInformationUseCase;

  ImageInformationCubit(this._imageInformationUseCase) : super(ImageInformationInitialState());

  Future<void> getImageInformationMethod() async {
    final result = await _imageInformationUseCase.getImageInformation();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
