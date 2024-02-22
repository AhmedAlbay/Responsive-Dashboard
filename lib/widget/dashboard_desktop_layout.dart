import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/all_expeness.dart';
import 'package:responsivedashboard/widget/custom_drawer.dart';
import 'package:responsivedashboard/widget/quick_invoice.dart';

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
            child: Column(
              children: [AllExpeness(), QuickInvoice()],
            ))
      ],
    );
  }
}
