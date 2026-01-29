import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:qq/constants.dart';

import 'package:qq/views/notes_views.dart';

void main() async {
  await Hive.initFlutter();

 await Hive.openBox(knotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NotesViews(),
    );
  }
}
