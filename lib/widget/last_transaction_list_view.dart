import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_image.dart';
import 'package:responsivedashboard/view/user_info_model.dart';
import 'package:responsivedashboard/widget/custom_user_info.dart';

class LastTransactionListView extends StatelessWidget {
  const LastTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvater2,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: CustomUserInfo(userInfoModel: e)),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: ((context, index) {
    //       return IntrinsicWidth(
    //           child: CustomUserInfo(userInfoModel: items[index]));
    //     }),
    //   ),
    // );
  }
}
