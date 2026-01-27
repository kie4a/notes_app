
import 'package:flutter/material.dart';
import 'package:qq/widgets/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context,index){
      return const Padding(
        padding: const EdgeInsets.symmetric(vertical: 4 ),
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: const NoteItem(),
        ),
      );

    });
  }
}

