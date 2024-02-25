import 'package:flutter/widgets.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/widget/dot_indicator.dart';
import 'package:responsivedashboard/widget/my_card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 420,
          child: Text(
            "My card",
            style: AppStyle.styleSemiBold20,
          ),
        ),
        const SizedBox(height: 20),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
