import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/all_expeness.dart';
import 'package:responsivedashboard/widget/quick_invoice.dart';

class AllExpenessAndQuickInoiveSection extends StatelessWidget {
  const AllExpenessAndQuickInoiveSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpeness(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice()
        ],
      ),
    );
  }
}
