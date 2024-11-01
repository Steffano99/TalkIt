import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      autocorrect: true,
      decoration: InputDecoration(labelText: 'Input text to convert...',
       border: OutlineInputBorder(
        borderSide: BorderSide(style: BorderStyle.solid,
        width: 5
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
              constraints: BoxConstraints(
    maxWidth: 300,
    maxHeight: 300,
              )
      ),
    );
  }
}