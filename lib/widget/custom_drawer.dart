import 'package:flutter/material.dart';
import 'package:responsivedashboard/model/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_image.dart';
import 'package:responsivedashboard/view/user_info_model.dart';
import 'package:responsivedashboard/widget/custom_user_info.dart';
import 'package:responsivedashboard/widget/drawer_item_list_view.dart';
import 'package:responsivedashboard/widget/inactive_active_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  MediaQuery.sizeOf(context).width *.7,
        color: Colors.white,
        child:  const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomUserInfo(
                userInfoModel: UserInfoModel(image:  Assets.imagesFrame, title: "Lekan Okeowo", subtitle: "demo@gmail.com",),
              )
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            SliverToBoxAdapter(
              child: DrawerItemListView(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 20,
                  )),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.imagesSettings),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.imagesLogout),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
