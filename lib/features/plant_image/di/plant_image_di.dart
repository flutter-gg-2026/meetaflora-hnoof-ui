import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'plant_image_di.config.dart'; 

@InjectableInit(
  initializerName: 'initPlantImage',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/plant_image'],
)
void configurePlantImage(GetIt getIt) {
  getIt.initPlantImage();
}
