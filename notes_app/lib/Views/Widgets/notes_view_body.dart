import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';

import 'Custom _Note _Item.dart';

class NotesviewsBody extends StatelessWidget {
  const NotesviewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
