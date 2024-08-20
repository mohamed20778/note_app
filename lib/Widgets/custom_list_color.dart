import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_note_app/Widgets/color_item.dart';
import 'package:my_note_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorlistView extends StatefulWidget {
  const ColorlistView({super.key});

  @override
  State<ColorlistView> createState() => _ColorlistViewState();
}

class _ColorlistViewState extends State<ColorlistView> {
  int currentIndex = 0;
  List myColors = [
    const Color(0xff8783D1),
    const Color(0xffAA9ABA),
    const Color(0xffBFA4A4),
    const Color(0xffD1ABAD),
    const Color(0xffE3B9BC)
  ];
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
                BlocProvider.of<AddNoteCubit>(context).noteColor =
                    myColors[index];
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
