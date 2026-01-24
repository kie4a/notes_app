import 'package:flutter/material.dart';
import 'package:qq/views/notes_views.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const NotesApp(),
    );
  }
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
theme: ThemeData(
  brightness: Brightness.dark
  ,fontFamily: "Poppins"
)
,home: NotesViews()

    );
  }
}