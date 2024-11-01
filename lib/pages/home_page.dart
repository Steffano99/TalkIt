import 'dart:io';
import 'package:flutter/material.dart';



class TTSApp extends StatelessWidget {
  const TTSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        appBar:  AppBar(
                    title: const Text('Listen to your Texts'),
          backgroundColor: Colors.teal,
          ),
      ),
    );
  }
}