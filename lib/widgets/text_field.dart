import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      autocorrect: true,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(labelText: 'Input text to convert',
      hintText: 'Type Something here...',
      filled: true,
      fillColor: Colors.white,
      prefixIcon:const Icon(Icons.message,),
       border:const OutlineInputBorder(
        borderSide: BorderSide.none,
         ),
         enabledBorder:
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
             borderSide: 
           const  BorderSide(
              color: Colors.black,
               width: 1),
          
               ),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
               borderSide:const BorderSide(color: Colors.black,
               width: 1)
               ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        
        constraints:const BoxConstraints(),
      ),
      style:const TextStyle(fontSize: 16),
    );
  }
}