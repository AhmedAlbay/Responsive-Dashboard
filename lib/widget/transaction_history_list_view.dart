import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/view/transaction_model.dart';
import 'package:responsivedashboard/widget/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: "Cash Withdrawal",
        subtitle: "13 Apr, 2022",
        price: r"$20,129",
        isWithdrawal: true),
    TransactionModel(
        title: "Landing Page project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        price: r"$2,000",
        isWithdrawal: false),
    TransactionModel(
        title: "Juni Mobile App project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        price: r"$20,129",
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    
  }
}
