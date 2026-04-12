import 'dart:convert';
import 'dart:io';
import 'package:meet_flora/core/network/api_endpoints.dart';
import 'package:meet_flora/core/network/dio_client.dart';
extension GeminiApi on DioClient {
   Future<String> analyzePlantImage({
    required File file,
  }) async {
    final bytes = await file.readAsBytes();

    final mimeType = _getMimeType(file.path);
    final base64Image = base64Encode(bytes);

    final response = await dio.post(
      ApiEndpoints.geminUrl,
      data: {
        "contents": [
          {
            "parts": [
              {
                "inline_data": {
                  "mime_type": mimeType,
                  "data": base64Image,
                }
              },
              {
                "text": """
Analyze this image.
If it is a plant, return the result in exactly this format:

Plant Name: ...
Description: ...
Care Tips: ...
If it is not a plant, respond only with:
This is not a plant.
"""
              }
            ]
          }
        ]
      },
    );

    final candidates = response.data['candidates'];
    if (candidates == null || candidates.isEmpty) {
      throw Exception('No response from Gemini');
    }

    final parts = candidates[0]['content']?['parts'];
    if (parts == null || parts.isEmpty) {
      throw Exception('No text found in Gemini response');
    }

    final text = parts[0]['text'];
    if (text == null || text.toString().trim().isEmpty) {
      throw Exception('Empty text returned from Gemini');
    }

    return text.toString();
  }

  String _getMimeType(String path) {
    final lowerPath = path.toLowerCase();

    if (lowerPath.endsWith('.png')) return 'image/png';
    if (lowerPath.endsWith('.webp')) return 'image/webp';
    if (lowerPath.endsWith('.jpg') || lowerPath.endsWith('.jpeg')) {
      return 'image/jpeg';
    }

    return 'image/jpeg';
  }
}