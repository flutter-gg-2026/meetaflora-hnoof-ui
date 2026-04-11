import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:meet_flora/core/services/local_keys_service.dart';
import 'package:meet_flora/features/plant_image/data/models/plant_image_model.dart';
import 'package:meet_flora/core/errors/network_exceptions.dart';


abstract class BasePlantImageRemoteDataSource {
  Future<PlantImageModel> getPlantImage();
}


@LazySingleton(as: BasePlantImageRemoteDataSource)
class PlantImageRemoteDataSource implements BasePlantImageRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   PlantImageRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<PlantImageModel> getPlantImage() async {
    try {
      return PlantImageModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
