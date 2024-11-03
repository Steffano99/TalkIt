import 'dart:convert';
import 'package:http/http.dart' as http;

class TtsService {
final String apiurl= "http://https://realistic-text-to-speech.p.rapidapi.com/synthesize"; 
// making a request to hit the text to speech API from rapidAPI
final String apikey ="eef3656341msh6f9c1b14a1aa31ap1db527jsn69bf33749370"; //inserting the API key to help hit the API when a request is made

Future<http.Response> convertTextToSpech(String Text) async{
  final response =await http.post(Uri.parse("http://rapidapi.com"),
  headers: {
      "Content-Type":"application/json",
      "x-RapidAPI-Key": apikey,
            "x-RapidAPI-Host": "text-to-speech.p.rapidapi.com", 
  },
  body: jsonEncode({
    "voice": "en-US-Wavenet-D",
    "text": Text,
    "speed": 1.0,
    "pitch": 0.0
  }),
  );
  if(response.statusCode==200){
      return response;
    }else
    {
      throw Exception("Failed to convert text to speech");
    }
}
}


