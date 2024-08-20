import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.noteColor});
  final bool isActive;
  final Color noteColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: isActive
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 38,
              child: CircleAvatar(
                radius: 36,
                backgroundColor: noteColor,
              ),
            )
          : CircleAvatar(
              radius: 38,
              backgroundColor: noteColor,
            ),
    );
  }
}
