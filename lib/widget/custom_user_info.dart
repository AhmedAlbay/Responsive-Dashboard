import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/styles.dart';
import 'package:responsivedashboard/view/user_info_model.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: AppStyle.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyle.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
