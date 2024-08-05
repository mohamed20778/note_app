import 'package:flutter/material.dart';
import 'package:my_note_app/Widgets/custom_appBar.dart';
import 'package:my_note_app/Widgets/custom_text_field.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Notes',
            myIcon: Icons.check,
          ),
          SizedBox(
            height: 35,
          ),
          CustomTextField(
            hintText: 'title',
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: 'content',
            maxLine: 5,
          )
        ],
      ),
    );
  }
}
