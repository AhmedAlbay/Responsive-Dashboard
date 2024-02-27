import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor, required this.title});
  final Color? backgroundColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 62,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor:backgroundColor?? const Color(0xff4EB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: Text(
              title,
              style: AppStyle.styleSemiBold18(context).copyWith(color:textColor?? Colors.white),
            )));
  }
}
