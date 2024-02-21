import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/view/all_expeness_item_model.dart';
import 'package:responsivedashboard/widget/all_expeness_item_header.dart';
import 'package:responsivedashboard/widget/inactive_and_active_all_expeness_item.dart';

class AllExpenessItem extends StatelessWidget {
  const AllExpenessItem(
      {super.key,
      required this.allExpenessItemModel,
      required this.isSelected});
  final AllExpenessItemModel allExpenessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpenessItem(allExpenessItemModel: allExpenessItemModel)
        : InActiveAllExpenessItem(allExpenessItemModel: allExpenessItemModel);
  }
}
