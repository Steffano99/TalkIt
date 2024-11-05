import 'dart:convert';
import 'package:http/http.dart' as http;

class TTSService {
  final String apiurl = "https://realistic-text-to-speech.p.rapidapi.com/v3/generate_voice_over_v2";
  final String apikey = "eef3656341msh6f9c1b14a1aa31ap1db527jsn69bf33749370"; // Replace with your actual API key, or use environment variables in production

  // Function to convert text to speech with customizable parameters
  Future<http.Response> convertTextToSpeech({
    required String text,
    String voiceId = "en-US-Neural2-A",
    String gender = "Male",
    String languageCode = "en-US",
    String languageName = "US English",
    String voiceName = "John",
    double pitch = 1.0,
    double speed = 1.0,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(apiurl),
        headers: {
          "Content-Type": "application/json",
          "x-RapidAPI-Key": apikey,
          "x-RapidAPI-Host": "realistic-text-to-speech.p.rapidapi.com",
        },
        body: jsonEncode({
          "voice_obj": {
            "id": 2014,
            "voice_id": voiceId,
            "gender": gender,
            "language_code": languageCode,
            "language_name": languageName,
            "voice_name": voiceName,
            "pitch": pitch,
            "speed": speed,
          },
          "json_data": [
            {
              "block_index": 0,
              "text": text,
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        // Parse and throw a detailed error if available in the response
        final errorDetails = jsonDecode(response.body);
        throw Exception("Failed to convert text to speech: ${errorDetails['message']}");
      }
    } catch (e) {
      throw Exception("Request failed with error: $e");
    }
  }
}

