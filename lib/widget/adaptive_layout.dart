import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLAyout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLAyout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constains) {
        if (constains.maxWidth < 800) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: mobileLAyout(context),
          );
        } else if (constains.maxWidth < 1200) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: tabletLayout(context),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: desktopLayout(context),
          );
        }
      },
    );
  }
}
