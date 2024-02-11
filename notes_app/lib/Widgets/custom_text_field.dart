import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({super.key, required this.hint, this.maxlines=1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        border:buildBorder(),
        enabledBorder:buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),);
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius:BorderRadius.circular(8),
      borderSide: BorderSide(
          color: color ?? Colors.white ),
    );
  }
}
