import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/all_expeness_item.dart';

import '../utils/app_image.dart';
import '../view/all_expeness_item_model.dart';

class AllExpenessItemListView extends StatefulWidget {
  const AllExpenessItemListView({super.key});
  static const items = [
    AllExpenessItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpenessItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpenessItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];

  @override
  State<AllExpenessItemListView> createState() =>
      _AllExpenessItemListViewState();
}

class _AllExpenessItemListViewState extends State<AllExpenessItemListView> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpenessItemListView.items.asMap().entries.map((e) {
        int index = e.key;
        var items = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AllExpenessItem(
                    isSelected: selectIndex == index,
                    allExpenessItemModel: items),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: AllExpenessItem(
                  isSelected: selectIndex == index,
                  allExpenessItemModel: items),
            ),
          );
        }
      }).toList(),
    );
  }
}
