import 'package:flutter/material.dart';
import 'package:qq/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
   cursorColor: kPrimaycolor,
    decoration: InputDecoration(
    hintText: "DDRGG",
      hintStyle:const  TextStyle(color: kPrimaycolor),
      border: buildBorder(),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(kPrimaycolor
       ),
    ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      
      
      borderRadius: BorderRadius.circular(16),
borderSide: BorderSide(color: color ?? Colors.white)
    );
  }
}