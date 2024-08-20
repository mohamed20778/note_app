// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_note_app/Widgets/color_item.dart';
import 'package:my_note_app/constants.dart';
import 'package:my_note_app/models/note_model.dart';

class ColorlistEditView extends StatefulWidget {
  const ColorlistEditView({super.key, required this.note});
  final NoteModel note;

  @override
  State<ColorlistEditView> createState() => _ColorlistViewState();
}

class _ColorlistViewState extends State<ColorlistEditView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = myColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: myColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = myColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                noteColor: myColors[index],
              ),
            );
          }),
    );
  }
}
