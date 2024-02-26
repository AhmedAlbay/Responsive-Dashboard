import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/view/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.subtitle,
          style: AppStyle.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.price,
          style: AppStyle.styleSemiBold20.copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
