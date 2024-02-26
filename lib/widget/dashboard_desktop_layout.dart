import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/allexpeness_and_quickinvoice_section.dart';
import 'package:responsivedashboard/widget/custom_drawer.dart';
import 'package:responsivedashboard/widget/income_section.dart';
import 'package:responsivedashboard/widget/mycard_and_transaction_history_secation.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 24),
              child: AllExpenessAndQuickInoiveSection(),
            )),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: MyCardAndTransactionHistorySection(),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: IncomeSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
