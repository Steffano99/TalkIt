import 'package:demo_app/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/widgets/text_field.dart';



class TTSApp extends StatelessWidget {
  const TTSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 230, 230),
        appBar:  AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          leading:  IconButton(
            icon:const Icon(Icons.menu,
            color: Colors.black,
            ),
                   onPressed: (){},
            ),
            title: const Text('Listen to your texts',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right:16),
                child: Image.asset('images/voice.PNG',height: 200,width: 190,),),
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
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding:  EdgeInsets.only(top:150.0),
        child: Column(
          children: [
            MyTextField(),
            SizedBox(height: 15,),
             MyElevatedButton(),
        ]),
      )
    );
  }
}
