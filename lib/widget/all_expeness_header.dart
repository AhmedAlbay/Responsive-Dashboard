import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/widget/range_option.dart';

class AllExpenessHeader extends StatelessWidget {
  const AllExpenessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyle.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        RangeOption()
      ],
    );
  }
}

