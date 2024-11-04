import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
     style: ElevatedButton.styleFrom(
      padding:const EdgeInsets.symmetric(
        vertical: 16, horizontal: 32
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shadowColor: Colors.blueAccent,
      elevation: 15.0,
     ),



      child: const Text('Convert to speech', style: TextStyle(fontSize:18,
      fontWeight: FontWeight.bold
      ),),
      onPressed: () {},
    );
  }
}
