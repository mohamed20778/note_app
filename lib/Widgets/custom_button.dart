import 'package:flutter/material.dart';
import 'package:my_note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: KprimaryColor, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          )),
    );
  }
}
