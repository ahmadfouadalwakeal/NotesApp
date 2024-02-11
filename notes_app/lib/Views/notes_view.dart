import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/Add_Note%20_Buttun_Sheet.dart';

import '../Widgets/notes_view_body.dart';

class Notesviews extends StatelessWidget {
  const Notesviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: const NotesviewsBody(),
    );
  }
}
