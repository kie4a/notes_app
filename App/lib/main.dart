import 'package:flutter/material.dart';
import 'package:qq/views/notes_views.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // لإخفاء شريط Debug من الزاوية
      theme: ThemeData(
        brightness: Brightness.dark, // تفعيل الوضع الليلي لكل التطبيق
        fontFamily: "Poppins", // التأكد من نوع الخط
      ),
      home: const NotesViews(),
    );
  }
}