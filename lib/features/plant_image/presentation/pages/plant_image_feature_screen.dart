import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meet_flora/core/navigation/routers.dart';
import 'package:meet_flora/features/plant_image/presentation/cubit/plant_image_cubit.dart';
import 'package:meet_flora/features/plant_image/presentation/cubit/plant_image_state.dart';
import 'package:meet_flora/features/plant_image/presentation/widgets/plant_image_widget.dart';

class PlantImageFeatureScreen extends StatelessWidget {
  const PlantImageFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {

  
       return BlocListener<PlantImageCubit,PlantImageState>(
      listener: (context, state) {
        if (state is PlantImageSuccessState) {
          context.push(Routes.imageInformation, extra: state.imagePath);
        }

        if (state is PlantImageErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Discover Plant'),
        ),




        body: BlocBuilder<PlantImageCubit,PlantImageState>(
          builder: (context, state) {


            final isLoading = state is PlantImageLoadingState;
            return Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () => context.read<PlantImageCubit>().pickFromCameraMethodCubit(),
                    child: Text('Capture from Camera'),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () => context.read<PlantImageCubit>().pickFromGalleryMethodCubit(),
                    child: Text('Select from Gallery'),
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
                          imagePath: 'assets/images/',
                          onTap: () {
                            context.push(Routes.imageInformation, extra: 'assets/images/');
                          },
                        ),
                        PlantImageWidget(
                          imagePath: 'https://www.easytogrowbulbs.com/cdn/shop/articles/plumeria-for-sale.jpg?v=1557257275&width=1100',
                          onTap: () {
                            context.push(Routes.imageInformation, extra: 'https://www.easytogrowbulbs.com/cdn/shop/articles/plumeria-for-sale.jpg?v=1557257275&width=1100');
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


/*
PlantImageInitialState 
PlantImageLoadingState
PlantImageSuccessState
PlantImageErrorState

*/
/*
    return Scaffold(
      appBar: AppBar(title: const Text('PlantImage Feature Screen')),images
      body:  GestureDetector(
        onTap:(){
       context.push(Routes.imageInformation,extra:"");
        }
      ,child: Column(children: [
          Container (child: Text("image one "),),
          Container(child: Text("image two"),)

          ,SizedBox(child: Image.asset(" https://www.easytogrowbulbs.com/cdn/shop/articles/plumeria-for-sale.jpg?v=1557257275&width=1100"),)
        
          //https://www.easytogrowbulbs.com/cdn/shop/articles/plumeria-for-sale.jpg?v=1557257275&width=1100
            //https://img.freepik.com/free-photo/green-houseplant-background-plant-lovers_53876-128849.jpg?semt=ais_hybrid&w=740&q=80
          ],
        ),
      ),
    );
  }
}*/
/*return BlocListener<PlantDiscoveryCubit, PlantDiscoveryState>(
      listener: (context, state) {
        if (state is PlantDiscoverySuccess) {
          context.push(Routes.details, extra: state.imagePath);
        }

        if (state is PlantDiscoveryFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Plant Discovery'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<PlantDiscoveryCubit, PlantDiscoveryState>(
            builder: (context, state) {
              final bool isLoading = state is PlantDiscoveryLoading;

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () => context.read<PlantDiscoveryCubit>().pickFromCamera(),
                    child: const Text('Capture from Camera'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () => context.read<PlantDiscoveryCubit>().pickFromGallery(),
                    child: const Text('Select from Gallery'),
                  ),
                  const SizedBox(height: 24),
                  if (isLoading) const CircularProgressIndicator(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
} */