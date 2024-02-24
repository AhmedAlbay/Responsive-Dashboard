import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/widget/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMeduim16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        )
      ],
    );
  }
}
