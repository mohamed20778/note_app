import 'package:flutter/material.dart';
import 'package:my_note_app/Views/edit_notes_body.dart';
import 'package:my_note_app/models/note_model.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, this.note});
  final NoteModel? note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesBody(
        note: note,
      ),
    );
  }
}
