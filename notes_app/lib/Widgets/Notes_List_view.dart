import 'package:flutter/material.dart';

import 'Custom _Note _Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: const NoteItem(),
      );
    });
  }
}
