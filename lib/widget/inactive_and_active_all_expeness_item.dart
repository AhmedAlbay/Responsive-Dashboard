import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/view/all_expeness_item_model.dart';
import 'package:responsivedashboard/widget/all_expeness_item_header.dart';

class InActiveAllExpenessItem extends StatelessWidget {
  const InActiveAllExpenessItem({
    super.key,
    required this.allExpenessItemModel,
  });

  final AllExpenessItemModel allExpenessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpenessItemHeader(
            image: allExpenessItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpenessItemModel.title,
            style: AppStyle.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpenessItemModel.date,
            style: AppStyle.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpenessItemModel.price,
            style: AppStyle.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpenessItem extends StatelessWidget {
  const ActiveAllExpenessItem({
    super.key,
    required this.allExpenessItemModel,
  });

  final AllExpenessItemModel allExpenessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpenessItemHeader(
            iconcolor: Colors.white,
            imageBackground: const Color.fromRGBO(255, 255, 255, 0.1),
            imagecolor: Colors.white,
            image: allExpenessItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpenessItemModel.title,
            style: AppStyle.styleMedium16(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(allExpenessItemModel.date,
              style: AppStyle.styleRegular14(context).copyWith(
                color: const Color.fromRGBO(250, 250, 250, 1),
              )),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpenessItemModel.price,
            style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
