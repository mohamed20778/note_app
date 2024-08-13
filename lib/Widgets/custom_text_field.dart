import 'package:flutter/material.dart';
import 'package:my_note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLine = 1,
      this.onSaved,
      this.onChanged});
  final String hintText;
  final void Function(String)? onChanged;
  final int maxLine;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field required';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLine,
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: KprimaryColor),
          focusedBorder: buildBorder(KprimaryColor),
          border: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder([borderColor]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: borderColor ?? Colors.white),
    );
  }
}
