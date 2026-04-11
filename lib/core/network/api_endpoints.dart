// api_endpoints.dart
class ApiEndpoints {
  ApiEndpoints._();

   
 static const String baseUrl = 'https://generativelanguage.googleapis.com/v1beta/';
  static const String geminUrl= 'models/gemini-2.5-flash:generateContent';

  // Common
  static String userById(String id) => '/users/$id';
}

