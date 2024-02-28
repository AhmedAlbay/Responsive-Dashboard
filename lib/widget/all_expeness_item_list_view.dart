import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/all_expeness_item.dart';

import '../utils/app_image.dart';
import '../view/all_expeness_item_model.dart';

class AllExpenessItemListView extends StatefulWidget {
  const AllExpenessItemListView({super.key});

  @override
  State<AllExpenessItemListView> createState() =>
      _AllExpenessItemListViewState();
}

class _AllExpenessItemListViewState extends State<AllExpenessItemListView> {
  final items = [
    const AllExpenessItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpenessItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpenessItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectIndex = 0;
              });
            },
            child: AllExpenessItem(
              isSelected: selectIndex == 0,
              allExpenessItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectIndex = 1;
              });
            },
            child: AllExpenessItem(
              isSelected: selectIndex == 1,
              allExpenessItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectIndex = 2;
              });
            },
            child: AllExpenessItem(
              isSelected: selectIndex == 2,
              allExpenessItemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }
}
