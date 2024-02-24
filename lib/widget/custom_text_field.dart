import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: const Color(0xfFAFAFAf),
          filled: true,
          helperStyle:
              AppStyle.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
          hintText: hint,
          border: buildBorder(),
          focusedBorder: buildBorder(),
          enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xffFAFAFA)));
  }
}
