// ignore: file_names
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.myIcon, this.onPressed});
  final String title;
  final IconData? myIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
        const Spacer(),
        Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(onPressed: onPressed, icon: Icon(myIcon)))
      ],
    );
  }
}
