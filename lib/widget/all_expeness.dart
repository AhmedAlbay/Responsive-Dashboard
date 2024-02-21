import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/all_expeness_header.dart';
import 'package:responsivedashboard/widget/all_expeness_item_list_view.dart';
import 'package:responsivedashboard/widget/custom_background_container.dart';

class AllExpeness extends StatelessWidget {
  const AllExpeness({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: CustomBackgroundContainer(
        child: Column(
        children: [
          AllExpenessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpenessItemListView()
        ],
      ),
      ),
    );
  }
}

