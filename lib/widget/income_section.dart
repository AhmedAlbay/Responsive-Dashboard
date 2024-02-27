import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/widget/custom_background_container.dart';
import 'package:responsivedashboard/widget/income_header.dart';
import 'package:responsivedashboard/widget/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [IncomeHeader(), IncomeSectionBody()],
    ));
  }
}
