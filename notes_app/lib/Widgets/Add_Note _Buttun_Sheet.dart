import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_button.dart';
import 'package:notes_app/Widgets/custom_text_field.dart';
import 'package:notes_app/constants.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            customtextfield(hint: 'Title',),
            SizedBox(height: 16,),
            customtextfield(hint: 'Content',maxlines: 5,),
            SizedBox(height: 32,),
            CustomButton(),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
