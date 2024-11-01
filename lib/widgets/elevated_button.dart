import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      child: const Text('Convert to speech'),
      onPressed: () {},
    );
  }
}
