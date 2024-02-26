import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/view/income_details_model.dart';
import 'package:responsivedashboard/widget/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      title: "Design service",
      value: "40%",
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      title: "Design product",
      value: "25%",
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      title: "Product royalti",
      value: "20%",
    ),
    IncomeDetailsModel(
      color: Color(0xffE2DECD),
      title: "Other",
      value: "22%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemDetails(incomeDetailsModel: items[index]);
        });
  }
}
