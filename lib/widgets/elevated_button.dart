import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback onPressed; // Declare onPressed as a final variable
  
  const MyElevatedButton({super.key, required this.onPressed}); // Use required for onPressed

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shadowColor: Colors.blueAccent,
        elevation: 15.0,
      ),
      onPressed: onPressed, // Use the onPressed callback passed from outside
      child: const Text(
        'Convert to speech',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
