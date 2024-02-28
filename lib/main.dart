import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsivedashboard/view/dash_board_view.dart';

void main() {
  runApp( DevicePreview(
    enabled: false,

    builder: ((context) =>const  ResponsiveDashBoard())));
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,  locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home:const  DashBoardView(),
      
    );
  }
}
