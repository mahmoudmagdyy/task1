
import 'package:flutter/material.dart';
class Button extends StatelessWidget {
   Button({Key? key,required this.name,required this.onPres}) : super(key: key);
 String name;
 Function onPres;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed:()=>onPres,
      child: Container(

        width: double.infinity,
        height: 40,
        color: Color(0xffFF6600),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child:  Center(
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 13.0),
          ),
        ),
      ),
    );
  }
}

