import 'package:flutter/material.dart';
import 'package:qq/widgets/custom_botton.dart';
import 'package:qq/widgets/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustomTextFiled(hint: "title"),
            const SizedBox(height: 16),
            CustomTextFiled(hint: "content", maxLines: 5),
       SizedBox(height: 60,),
      
            CustomBotton(),
          SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
