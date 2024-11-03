import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashScreen({super.key, required this.onInitializationComplete});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Timer( const Duration(seconds: 1), widget.onInitializationComplete);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TalkIt',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
               Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/talk.png'),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text('Your Voice',style:
                     TextStyle(color:Colors.teal,
                     fontWeight:FontWeight.bold,
                     fontSize: 25,
                     ),),
                    SizedBox(width: 5,),
                    Text('Our Words',style:
                     TextStyle(color:Color.fromARGB(255, 24, 177, 19),
                     fontSize: 20,
                     fontWeight:FontWeight.bold
                     ),),
                  ],
                )
              ],
            )
            
          ),
        ),
    
    );
  }
}
