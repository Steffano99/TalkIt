import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required TextEditingController controller});
 
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ConstrainedBox(
        constraints:const BoxConstraints(
          maxHeight: 300,
          maxWidth: 400,
        ),
       child: TextField(
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
                 width: 0.5),
            
                 ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                 borderSide:const BorderSide(color: Colors.black,
                 width: 0.5),
                 ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          
          constraints:const BoxConstraints(),
        ),
        style:const TextStyle(fontSize: 16),
      ),
      ),
      );
  }
}