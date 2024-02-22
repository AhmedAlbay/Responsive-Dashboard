import 'package:flutter/material.dart';
import 'package:responsivedashboard/widget/custom_background_container.dart';
import 'package:responsivedashboard/widget/last_transaction.dart';
import 'package:responsivedashboard/widget/quick_invoice_headers.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [QuickInvoiceHeaders(), LastTransaction()],
    ));
  }
}
