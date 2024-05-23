import 'package:dashboard/features/home/ui/widgets/all_expenses/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/features/home/ui/widgets/income/my_card_and_transaction_and_income_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndTransactionAndIncomeSection(),
        ],
      ),
    );
  }
}
