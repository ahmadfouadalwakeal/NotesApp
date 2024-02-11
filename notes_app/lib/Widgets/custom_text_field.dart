import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        border:buildBorder(),
        enabledBorder:buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),

      ),
    );
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius:BorderRadius.circular(8),
      borderSide: BorderSide(
          color: color ?? Colors.white ),
    );
  }
}
