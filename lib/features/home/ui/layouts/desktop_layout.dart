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
        Expanded(
          child: CustomDrawer(),
        ),
        Gap(32),
        Expanded(
          child: AllExpensesBody(),
        ),
      ],
    );
  }
}
