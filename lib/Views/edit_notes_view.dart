import 'package:flutter/material.dart';
import 'package:my_note_app/Views/edit_notes_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesBody(),
    );
  }
}
