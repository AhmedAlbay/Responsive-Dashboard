import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/utils/styles.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
