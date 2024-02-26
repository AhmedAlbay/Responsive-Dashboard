import 'package:flutter/material.dart';
import 'package:responsivedashboard/model/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_image.dart';
import 'package:responsivedashboard/widget/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWallet),
    DrawerItemModel(title: "My Investments", image: Assets.imagesInvest),
  ];

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: "My Transaction", image: Assets.imagesTransaction),
    const DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    const DrawerItemModel(title: "Wallet Account", image: Assets.imagesWallet),
    const DrawerItemModel(title: "My Investments", image: Assets.imagesInvest),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
               
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                isActive: activeIndex == index,
                drawerItemModel: items[index],
              ),
            ),
          );
        });
  }
}
