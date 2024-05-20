import 'package:flutter/material.dart';

import '../widgets/all_expenses_and_quick_invoice_section.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/my_card_and_transaction_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        Expanded(
          child: MyCardAndTransactionSection(),
        ),
      ],
    );
  }
}
