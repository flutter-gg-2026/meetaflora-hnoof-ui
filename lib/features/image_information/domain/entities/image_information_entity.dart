import 'dart:typed_data';

import 'package:equatable/equatable.dart';

class ImageInformationEntity extends Equatable {

  final String mimeType;
  final String? name; 

  const ImageInformationEntity({
    required this.mimeType,
    required this.name,
  });

  @override
  List<Object?> get props => [ mimeType, name];
}
