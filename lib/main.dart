import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_note_app/Views/notes_view.dart';
import 'package:my_note_app/constants.dart';
import 'package:my_note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:my_note_app/models/note_model.dart';
import 'package:my_note_app/simple_bloc_opserver.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
