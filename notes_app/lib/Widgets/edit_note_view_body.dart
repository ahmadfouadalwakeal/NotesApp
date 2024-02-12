import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_app_bar.dart';
import 'package:notes_app/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomAppBar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 30),
          customtextfield(hint: 'Title'),
          SizedBox(height: 16,),
          customtextfield(hint: 'Content',maxlines: 5,),
        ],
      ),
    );
  }
}
