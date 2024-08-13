import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note_app/Widgets/custom_appBar.dart';
import 'package:my_note_app/Widgets/custom_text_field.dart';
import 'package:my_note_app/cubits/fetchNotesCubit/cubit/notes_cubit_cubit.dart';
import 'package:my_note_app/models/note_model.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({super.key, this.note});
  final NoteModel? note;

  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note!.title = title ?? widget.note!.title;
              widget.note!.subTitle = content ?? widget.note!.subTitle;
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            title: 'Edit Notes',
            myIcon: Icons.check,
          ),
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: 'title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: 'content',
            maxLine: 5,
          )
        ],
      ),
    );
  }
}
