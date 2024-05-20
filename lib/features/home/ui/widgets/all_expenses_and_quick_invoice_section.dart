import 'package:dashboard/features/home/ui/widgets/all_expenses_body.dart';
import 'package:dashboard/features/home/ui/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Gap(40),
        AllExpenses(),
        Gap(24),
        QuickInvoice(),
      ],
    );
  }
}