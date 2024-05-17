import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'all_expenses_header.dart';
import 'all_expenses_items.dart';
import 'custom_background_container.dart';

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        AllExpensesHeader(),
        Gap(16),
        AllExpensesItems(),
      ],
    ));
  }
}
