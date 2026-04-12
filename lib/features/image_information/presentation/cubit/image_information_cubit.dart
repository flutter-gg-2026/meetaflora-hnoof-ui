import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_flora/features/image_information/domain/use_cases/image_information_use_case.dart';
import 'package:meet_flora/features/image_information/presentation/cubit/image_information_state.dart';

class ImageInformationCubit extends Cubit<ImageInformationState> {
 final ImageInformationUseCase _imageInformationUseCase;

  ImageInformationCubit(this._imageInformationUseCase)
      : super(ImageInformationInitialState());

  Future<void> getImageInformationMethod({
    required File file,
  }) async {
    emit(ImageInformationLoadingState());

    final result = await _imageInformationUseCase.getImageInformation(
      file: file,
    );

    result.when(
      (success) {
        emit(ImageInformationSuccessState(data: success));
      },
      (whenError) {
        emit(ImageInformationErrorState(message: whenError.message));
      },
    );
  }
}
//dart run build_runner build --delete-conflicting-outputs