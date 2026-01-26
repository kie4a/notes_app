import 'package:flutter/material.dart';
import 'package:qq/widgets/custom_app_bar.dart';
import 'package:qq/widgets/custom_notes_item.dart';
import 'package:qq/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: const
       [SizedBox(height: 50),
        CustomAppbar(),
       Expanded(child: NotesListView())
        
        
        ]),
    );
  }
}





