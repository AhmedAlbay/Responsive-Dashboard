import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/size_confing.dart';
import 'package:responsivedashboard/widget/details_income_chart.dart';
import 'package:responsivedashboard/widget/income_chart.dart';
import 'package:responsivedashboard/widget/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > SizeConfing.desktop && width <= 1200
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(8),
            child: DetailsIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
