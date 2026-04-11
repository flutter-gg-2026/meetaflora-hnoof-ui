import 'package:get_it/get_it.dart';
import 'package:meet_flora/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:meet_flora/features/plant_image/di/plant_image_di.dart';
import 'package:meet_flora/features/image_information/di/image_information_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configurePlantImage(getIt);
    configureImageInformation(getIt);
}
