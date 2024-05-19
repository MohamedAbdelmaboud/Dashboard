import 'package:dashboard/features/home/ui/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/all_expenses_body.dart';
import '../widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Gap(40),
        Expanded(
          child: CustomDrawer(),
        ),
        Gap(32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpensesBody(),
              Gap(24),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
