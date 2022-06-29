
import 'package:algorizatask01/signUp/textFeild.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../buildElevatedButton.dart';
import '../constant.dart';
import '../login/signIn.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF6600),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to Fashion "),
            SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Register ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
               Row(
                 children: [
                   Text("help ",style: TextStyle(fontSize: 20,),),
                   Icon(Icons.help_rounded)
                 ],
               )
             ],

           ),
            SizedBox(height: 20,),
            TextFeild(name: "email"),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
              ),
              child:Row(
                children: [
                  CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IT',
                    favorite: ['+39','FR'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label:Text("02014")
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: 20,),
            TextFeild(name: "password",),
            SizedBox(height: 20,),
            Button(name: 'Register',onPres: (){},),
            SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: const [
               Divider(),
               Text("or"),
               Divider(),
             ],
           ),
            const SizedBox(height: 10,),
            Center(
              child: Container(

                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                width: double.infinity,
                child: OutlinedButton(
                  child: const Text(
                    "Sign With By Google",
                    style: TextStyle(
                      color:Color(0xffFF6600),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " has an account?  ",
                  style: TextStyle(fontSize: 16)
                      .copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  ),
                  child: Text(
                    'Sig in here  ',
                    style: TextStyle(fontSize: 16)
                        .copyWith(color: Constant.primary),
                  ),

                ),
              ],
            ),
            const SizedBox(height: 20,),



                Center(
                  child: Text(

                    " By registaring your account ,you are agree \n terms and condition?  ",
                    style: TextStyle(fontSize: 16)
                        .copyWith(color: Colors.black
                        ,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),




          ],
        ),
      ),
    );
  }
}
