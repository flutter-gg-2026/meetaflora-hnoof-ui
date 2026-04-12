import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_flora/core/navigation/routers.dart';
import 'package:meet_flora/features/plant_image/presentation/cubit/plant_image_cubit.dart';
import 'package:meet_flora/features/plant_image/presentation/cubit/plant_image_state.dart';
import 'package:meet_flora/features/plant_image/presentation/widgets/button_widget.dart';
import 'package:meet_flora/features/plant_image/presentation/widgets/plant_image_widget.dart';

class PlantImageFeatureScreen extends StatelessWidget {
  const PlantImageFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<PlantImageCubit, PlantImageState>(
      listener: (context, state) {
        if (state is PlantImageSuccessState) {
          context.push(Routes.imageInformation, extra: state.imagePath);
        }

        if (state is PlantImageErrorState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },

      child: Scaffold(
        appBar: AppBar(title: Text('Discover Plant')),

        body: BlocBuilder<PlantImageCubit, PlantImageState>(
          builder: (context, state) {
            final isLoading = state is PlantImageLoadingState;
            return Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  ButtonWidget(
                    text: "Capture from Camera",
                    icon: Icons.camera_alt,
                    onTap: isLoading
                        ? null
                        : () => context
                              .read<PlantImageCubit>()
                              .pickFromCameraMethodCubit(),
                  ),

                 
   Spacer(flex: 1,),
                  ButtonWidget(
                    text: "Select from Gallery",
                    icon: Icons.photo_library,
                    onTap: isLoading
                        ? null
                        : () => context
                              .read<PlantImageCubit>()
                              .pickFromGalleryMethodCubit(),
                  ),
               
                  if (isLoading) CircularProgressIndicator(),

                  // this an image are in the bar
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      children: [
                        PlantImageWidget(
                          imagePath: 'assets/images/white.jpeg',
                          onTap: () {
                            context.push(
                              Routes.imageInformation,
                              extra: 'assets/images/white.jpeg',
                            );
                          },
                        ),
                        PlantImageWidget(
                          imagePath:
                              'https://www.easytogrowbulbs.com/cdn/shop/articles/plumeria-for-sale.jpg?v=1557257275&width=1100',
                          onTap: () {
                            context.push(
                              Routes.imageInformation,
                              extra:
                                  'https://www.easytogrowbulbs.com/cdn/shop/articles/plumeria-for-sale.jpg?v=1557257275&width=1100',
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

