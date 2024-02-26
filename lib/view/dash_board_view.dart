import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/adaptive_layout.dart';
import 'package:responsivedashboard/widget/custom_drawer.dart';
import 'package:responsivedashboard/widget/dashboard_desktop_layout.dart';
import 'package:responsivedashboard/widget/dashboard_mobile_layout.dart';
import 'package:responsivedashboard/widget/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
          
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                    setState(() {});
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffFAFAFA),
      body: AdaptiveLayout(
        mobileLAyout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
