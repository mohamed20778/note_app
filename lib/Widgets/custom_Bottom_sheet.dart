import 'package:flutter/material.dart';
import 'package:my_note_app/Widgets/custom_button.dart';
import 'package:my_note_app/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(hintText: 'Content', maxLine: 5),
            SizedBox(
              height: 30,
            ),
            CustomButton(),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
