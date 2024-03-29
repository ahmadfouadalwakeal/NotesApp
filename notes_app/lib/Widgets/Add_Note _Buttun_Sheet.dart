import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_button.dart';
import 'package:notes_app/Widgets/custom_text_field.dart';
import 'package:notes_app/constants.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          customtextfield(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          customtextfield(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: (){
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
