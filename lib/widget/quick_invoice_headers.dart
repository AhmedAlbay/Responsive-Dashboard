import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/styles.dart';

class QuickInvoiceHeaders extends StatelessWidget {
  const QuickInvoiceHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text("Quick Invoice",style: AppStyle.styleSemiBold20(context),),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
