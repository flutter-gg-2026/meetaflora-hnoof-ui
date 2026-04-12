import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_flora/features/plant_image/presentation/pages/plant_image_feature_screen.dart';
import 'package:meet_flora/features/plant_image/presentation/cubit/plant_image_cubit.dart';
import 'package:meet_flora/features/image_information/presentation/pages/image_information_feature_screen.dart';
import 'package:meet_flora/features/image_information/presentation/cubit/image_information_cubit.dart';



class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.plantImage,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),
    
  GoRoute(
    path: Routes.plantImage,
    builder: (context, state) => BlocProvider(
          create: (context) => PlantImageCubit(GetIt.I.get()),
          child: const PlantImageFeatureScreen(),
        ),
  ),

  GoRoute(
    path: Routes.imageInformation,
    builder: (context, state) {
      
final path = state.extra as String;
final isNetwork = path.startsWith('http');
final isAsset = path.startsWith('assets/');
final isLocalFile = !isNetwork && !isAsset;

return BlocProvider(
  create: (context) {
    final cubit = ImageInformationCubit(GetIt.I.get());

    if (isLocalFile) {
      cubit.getImageInformationMethod(file: File(path));
    }

    return cubit;
  },
  child: ImageInformationFeatureScreen(path: path),
);}
  ),
],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
