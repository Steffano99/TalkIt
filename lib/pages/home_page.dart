import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart'; // For audio playback on all platforms
import 'package:demo_app/services/tts_service.dart';
import 'package:demo_app/widgets/elevated_button.dart';
import 'package:demo_app/widgets/text_field.dart';

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
  final ttsService = TTSService();
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> speak() async {
    try {
      final response = await ttsService.convertTextToSpeech(
        text: controller.text,
        pitch: 1.0,
        speed: 1.0,
      );
      if (response.statusCode == 200) {
        final Uint8List bytes = response.bodyBytes; // Extract the audio bytes
        await _audioPlayer.playBytes(bytes); // Play the audio using AudioPlayer
      } 
    // ignore: empty_catches
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyTextField(controller: controller),
            const SizedBox(height: 20),
            MyElevatedButton(
              onPressed: speak,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _audioPlayer.dispose(); // Dispose of the audio player
    super.dispose();
  }
}

extension AudioPlayerExtension on AudioPlayer {
  Future<void> playBytes(Uint8List bytes) async {
    await play(BytesSource(bytes)); // Use BytesSource for audio playback from bytes
  }
}
