import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpenessItemHeader extends StatelessWidget {
  const AllExpenessItemHeader(
      {super.key, required this.image, this.imageBackground, this.imagecolor, this.iconcolor});
  final String image;
  final Color? imageBackground, imagecolor ,iconcolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackground ?? const Color(0xffFAFAFA),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imagecolor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child:  Icon(
            Icons.arrow_back_ios_new_outlined,
            color:iconcolor??  const Color(0xff064060),
          ),
        ),
      ],
    );
  }
}
