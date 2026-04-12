import 'dart:io';

import 'package:flutter/material.dart';

class PlantImageWidget extends StatelessWidget {
  const PlantImageWidget({
    super.key,
    required this.imagePath,
    required this.onTap,
  });
  final String imagePath;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final isAsset = imagePath.startsWith('assets/');
    final isNetwork = imagePath.startsWith('http');
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: isAsset
            ? Image.asset(imagePath, fit: BoxFit.cover)
            : isNetwork
            ? Image.network(imagePath, fit: BoxFit.cover)
            : Image.file(File(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
