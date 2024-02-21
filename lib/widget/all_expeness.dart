import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_image.dart';
import 'package:responsivedashboard/view/all_expeness_item_model.dart';
import 'package:responsivedashboard/widget/all_expeness_header.dart';
import 'package:responsivedashboard/widget/all_expeness_item.dart';
import 'package:responsivedashboard/widget/all_expeness_item_list_view.dart';

class AllExpeness extends StatelessWidget {
  const AllExpeness({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Column(
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
