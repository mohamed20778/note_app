import 'package:flutter/material.dart';
import 'package:my_note_app/Widgets/custom_appBar.dart';
import 'package:my_note_app/Widgets/custom_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
            title: 'Notes',
            myIcon: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: CustomListView()),
        ],
      ),
    );
  }
}
