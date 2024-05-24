import 'package:dashboard/features/home/ui/widgets/income/my_card_and_transaction_and_income_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/all_expenses/all_expenses_and_quick_invoice_section.dart';
import '../widgets/custom_drawer/custom_drawer.dart';

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
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    Expanded(
                      child: MyCardAndTransactionAndIncomeSection(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
