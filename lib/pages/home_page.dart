import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart'; // For audio playback on all platforms
import 'package:demo_app/services/tts_service.dart';
import 'package:demo_app/widgets/elevated_button.dart';
import 'package:demo_app/widgets/text_field.dart';
import 'package:http/http.dart' as http; // Ensure you have this import for the TTSService

class TTSApp extends StatelessWidget {
  const TTSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.blue[400],
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          title: const Text(
            'Listen to your texts',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset('images/voice.PNG', height: 200, width: 190),
            ),
          ],
        ),
        body: const Center(child: TTSForm()),
      ),
    );
  }
}

class TTSForm extends StatefulWidget {
  const TTSForm({super.key});

  @override
  State<TTSForm> createState() => _TTSFormState();
}

class _TTSFormState extends State<TTSForm> {
  final controller = TextEditingController();
  final ttsservice = TTSService();
  final AudioPlayer _audioPlayer = AudioPlayer(); // Audio player instance for cross-platform playback

  Future<void> speak() async {
    try {
      final response = await ttsservice.convertTextToSpeech(controller.text);
      if (response.statusCode == 200) {
        final Uint8List bytes = response.bodyBytes; // Ensure this is the correct type
        await _audioPlayer.playBytes(bytes);
      } else {
        print('Error: ${response.statusCode} ${response.reasonPhrase}');
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Keeps the form centered vertically
          children: [
            MyTextField(controller: controller), // Pass controller to text field
            const SizedBox(height: 20),
            MyElevatedButton(
              onPressed: () => speak(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _audioPlayer.dispose(); // Dispose of audio player
    super.dispose();
  }
}

extension on AudioPlayer {
  Future<void> playBytes(Uint8List bytes) async {
    await playBytes(bytes); // Ensure this calls the correct method
  }
}
