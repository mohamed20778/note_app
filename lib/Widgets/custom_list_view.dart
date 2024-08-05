import 'package:flutter/material.dart';
import 'package:my_note_app/Views/edit_notes_view.dart';
import 'package:my_note_app/Widgets/note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditNotesView()));
                },
                child: const NoteItem()),
          );
        });
  }
}
