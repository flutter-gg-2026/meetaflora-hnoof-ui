import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'image_information_di.config.dart'; 

@InjectableInit(
  initializerName: 'initImageInformation',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/image_information'],
)
void configureImageInformation(GetIt getIt) {
  getIt.initImageInformation();
}
