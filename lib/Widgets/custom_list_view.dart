import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note_app/Views/edit_notes_view.dart';
import 'package:my_note_app/Widgets/note_item.dart';
import 'package:my_note_app/cubits/fetchNotesCubit/cubit/notes_cubit_cubit.dart';
import 'package:my_note_app/models/note_model.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).noteslist ?? [];
        return ListView.builder(
            itemCount: notes.length,
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
      },
    );
  }
}
