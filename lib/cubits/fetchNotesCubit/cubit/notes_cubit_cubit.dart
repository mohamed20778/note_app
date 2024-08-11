import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:my_note_app/constants.dart';
import 'package:my_note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? noteslist;
  // List<NoteModel> noteslist;
  fetchNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    noteslist = noteBox.values.toList();
  }
}
