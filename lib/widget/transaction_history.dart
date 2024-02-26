import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/widget/transaction_history_header.dart';
import 'package:responsivedashboard/widget/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyle.styleMeduim16.copyWith(color: Color(0xffAAAAAA)),
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
