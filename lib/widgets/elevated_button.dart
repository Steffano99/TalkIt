import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: const ButtonStyle(elevation: WidgetStatePropertyAll(20),
      backgroundColor: WidgetStatePropertyAll(Colors.red)
      ),
      child: const Text('Convert to speech', style: TextStyle(color: Colors.black),),
      onPressed: () {},
    );
  }
}
