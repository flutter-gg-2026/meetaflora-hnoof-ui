import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_flora/features/image_information/presentation/cubit/image_information_cubit.dart';
import 'package:meet_flora/features/image_information/presentation/cubit/image_information_state.dart';

class ImageInformationFeatureScreen extends StatelessWidget {
  final String path;
  const ImageInformationFeatureScreen({super.key, required this.path});
  @override
  Widget build(BuildContext context) {
        final file = File(path);

      context.read<ImageInformationCubit>().getImageInformationMethod(
            file: file,
          );
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Details'),
      ),
      body: BlocBuilder<ImageInformationCubit, ImageInformationState>(
        builder: (context, state) {
          if (state is ImageInformationLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }



          if (state is ImageInformationErrorState) {
            return Center(
              child: Text(state.message),
            );
          }



          if (state is ImageInformationSuccessState) {
            final data = state.data;

            return SingleChildScrollView(
              padding:  EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.file(
                      file,
                      width: double.infinity,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                
                  Text(
                    data.plantName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                       Spacer(flex: 1,),
                  Text(data.description),
                 Spacer(flex: 1,),
                  Text(
                    'Care Tips',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  
                  Text(data.careTips),
                ],
              ),
            );
          }

          return  SizedBox.shrink();
        },
      ),
    );
  }
}