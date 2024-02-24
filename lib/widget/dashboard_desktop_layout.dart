import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/allexpeness_and_quickinvoice_section.dart';
import 'package:responsivedashboard/widget/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 2,
            child: AllExpenessAndQuickInoiveSection())
      ],
    );
  }
}

