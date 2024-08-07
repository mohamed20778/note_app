import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:my_note_app/constants.dart';
import 'package:my_note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    try {
      emit(AddNoteloading());
      var noteBox = Hive.box(kNotesBox);
      emit(AddNoteSuccess());
      noteBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(errmessage: e.toString()));
    }
  }
}
