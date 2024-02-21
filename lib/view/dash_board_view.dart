import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/adaptive_layout.dart';
import 'package:responsivedashboard/widget/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: AdaptiveLayout(
        mobileLAyout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
