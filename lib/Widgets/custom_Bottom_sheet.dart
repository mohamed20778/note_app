// ignore_for_file: file_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note_app/Widgets/add_noteform.dart';
import 'package:my_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:my_note_app/cubits/fetchNotesCubit/cubit/notes_cubit_cubit.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            if (kDebugMode) {
              print('failed ${state.errmessage}');
            }
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteloading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
