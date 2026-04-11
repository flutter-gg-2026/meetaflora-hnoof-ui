import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:meet_flora/core/network/api_endpoints.dart';
import 'package:meet_flora/core/network/dio_client.dart';
extension GeminiApi on DioClient {
  Future<String> analyzePlantImage({
    required Uint8List bytes,
    required String mimeType,
  }) async {
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
                "text":
                    "Analyze this image. If it is a plant, return: "
                    "1) plant name, "
                    "2) short description, "
                    "If it is not a plant, respond only with: This is not a plant."
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

    final parts = candidates[0]['content']['parts'];
    if (parts == null || parts.isEmpty) {
      throw Exception('No text found in Gemini response');
    }

    return parts[0]['text'] ?? 'No description found';
  }
}