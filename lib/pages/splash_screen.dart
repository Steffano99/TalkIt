import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashScreen({super.key, required this.onInitializationComplete});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       title: 'TalkIt',
       theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
       ),
       home: Scaffold(
        body: Center(
          child:Container(
            height: 250,
          width: 250,
          decoration:const BoxDecoration(
            color: Colors.red,
           // image: DecorationImage(
            //  fit: BoxFit.fill,
             // image: AssetImage('assets/images/TalkIt.png')),
          ),
          )

        ),
       ),
    );
  }
}