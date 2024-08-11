import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note_app/Widgets/custom_appBar.dart';
import 'package:my_note_app/Widgets/custom_list_view.dart';
import 'package:my_note_app/cubits/fetchNotesCubit/cubit/notes_cubit_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            myIcon: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: CustomListView()),
        ],
      ),
    );
  }
}
