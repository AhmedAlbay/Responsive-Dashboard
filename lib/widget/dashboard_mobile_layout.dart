import 'package:flutter/cupertino.dart';
import 'package:responsivedashboard/widget/allexpeness_and_quickinvoice_section.dart';
import 'package:responsivedashboard/widget/income_section.dart';

import 'mycard_and_transaction_history_secation.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          AllExpenessAndQuickInoiveSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
