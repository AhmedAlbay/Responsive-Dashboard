import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/widget/last_transaction_list_view.dart';

class LastTransaction extends StatelessWidget {
  const LastTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyle.styleRegular16,
        ),
        SizedBox(
          height: 16,
        ),
        LastTransactionListView()
      ],
    );
  }
}
