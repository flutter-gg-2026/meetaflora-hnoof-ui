import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:meet_flora/core/services/local_keys_service.dart';
import 'package:meet_flora/features/image_information/data/models/image_information_model.dart';
import 'package:meet_flora/core/errors/network_exceptions.dart';


abstract class BaseImageInformationRemoteDataSource {
  Future<ImageInformationModel> getImageInformation();
}

@LazySingleton(as: BaseImageInformationRemoteDataSource)
class ImageInformationRemoteDataSource implements BaseImageInformationRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   ImageInformationRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<ImageInformationModel> getImageInformation() async {
    try {
      return ImageInformationModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
