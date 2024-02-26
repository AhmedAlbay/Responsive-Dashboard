import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/widget/custom_background_container.dart';
import 'package:responsivedashboard/widget/income_chart.dart';
import 'package:responsivedashboard/widget/income_details.dart';
import 'package:responsivedashboard/widget/income_header.dart';
import 'package:responsivedashboard/widget/range_option.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeHeader(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails())
            ],
          ),
        )
      ],
    ));
  }
}
