import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_flora/features/image_information/presentation/cubit/image_information_cubit.dart';

class ImageInformationFeatureScreen extends StatelessWidget {
  final String path;
  const ImageInformationFeatureScreen({super.key, required this.path});
  @override
  Widget build(BuildContext context) {
     
      final _ = context.read<ImageInformationCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('ImageInformation Feature Screen')),
      body: Column(children: [
          
        ],
      ),
    );
  }
}
