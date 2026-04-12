import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
@lazySingleton
class ImagePaickerService {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickFromCamera() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 70,
      maxWidth: 80,
    );

    if (image == null) return null;
    return File(image.path);
  }

  Future<File?> pickFromGallery() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
      maxWidth: 80,
    );

    if (image == null) return null;
    return File(image.path);
  }
}
