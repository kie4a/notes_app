import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:qq/constants.dart';
import 'package:qq/cubits/cubit/notes_cubit.dart';
import 'package:qq/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // <--- أضف هذا السطر
import 'package:qq/simple_bloc_observer.dart';
import 'package:qq/views/notes_views.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NotesViews(),
      ),
    );
  }
}
