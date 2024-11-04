import 'dart:convert';
import 'package:http/http.dart' as http;

class TTSService {
  final String apiurl = "https://realistic-text-to-speech.p.rapidapi.com/v3/generate_voice_over_v2"; // Corrected URL for text-to-speech API endpoint
  final String apikey = "eef3656341msh6f9c1b14a1aa31ap1db527jsn69bf33749370"; // API key to authorize requests

  // Function to convert text to speech by making an API call
  Future<http.Response> convertTextToSpeech(String text) async {
    final response = await http.post(
      Uri.parse(apiurl),
      headers: {
        "Content-Type": "application/json",
        "x-RapidAPI-Key": apikey,
        "x-RapidAPI-Host": "realistic-text-to-speech.p.rapidapi.com",
      },
      body: jsonEncode({
        "voice": "en-US-Wavenet-D",
        "text": text,
        "speed": 1.0,
        "pitch": 0.0,
      }),
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception("Failed to convert text to speech");
    }
    
  }
}
