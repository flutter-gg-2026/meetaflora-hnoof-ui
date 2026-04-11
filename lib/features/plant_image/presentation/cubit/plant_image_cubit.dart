import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_flora/core/errors/failure.dart';
import 'package:meet_flora/features/plant_image/domain/use_cases/plant_image_use_case.dart';
import 'package:meet_flora/features/plant_image/presentation/cubit/plant_image_state.dart';

class PlantImageCubit extends Cubit<PlantImageState> {
  final PlantImageUseCase _plantImageUseCase;
  //the connection with the use case from the last layer

  PlantImageCubit(this._plantImageUseCase) : super(PlantImageInitialState());

  Future<void> getPlantImageMethod() async {
    final result = await _plantImageUseCase.getPlantImage();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  Future <void>pickFromGalleryMethodCubit ()async{
    final result =await _plantImageUseCase.pickImageFromGallery();
    result.match(
    (onLeft)=> emit(PlantImageErrorState (message: onLeft.message)),
    (onRight)=>emit(PlantImageErrorState (message: onRight))
    );
    

  }

Future <void> pickFromCameraMethodCubit()async{
final result = await _plantImageUseCase.pickImageFromCamera();
    result.match(
      (whenError) {// when the error shows get this message 
        return emit(PlantImageErrorState (message: whenError.message));

      },
      ( success) {
         return emit(PlantImageSuccessState(imagePath: success));
       //here is when error result
      },
    );
}
//class PlantImageErrorState 
//class PlantImageSuccessState

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
