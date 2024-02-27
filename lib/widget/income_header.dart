import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/widget/range_option.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          "Income",
          style: AppStyle.styleSemiBold20(context),
        ),
     const   Spacer(),
     const   RangeOption(),
      ],
    );
  }
}
