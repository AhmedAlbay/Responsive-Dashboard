import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/custom_dot_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) =>  Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: CustomDotIndicator(isActive: index ==currentPageIndex),
              )),
    );
  }
}
