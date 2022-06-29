


import 'package:flutter/material.dart';

class TextFeild extends StatelessWidget {

   TextFeild({ Key? key,required this.name}) : super(key: key);
   String name;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        labelText: name,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'value empty';
        } else {
          return null;
        }
      },


    );
  }
}
