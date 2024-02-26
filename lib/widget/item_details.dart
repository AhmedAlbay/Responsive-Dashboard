import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/view/income_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(width: 12,height: 12,decoration: ShapeDecoration(
        color: incomeDetailsModel.color,
        shape: const OvalBorder()),),
        title: Text(incomeDetailsModel.title,style: AppStyle.styleRegular16,),
        trailing: Text(incomeDetailsModel.value,style: AppStyle.styleMeduim16,),
    );
  }
}
