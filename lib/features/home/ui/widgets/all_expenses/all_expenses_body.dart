import 'package:dashboard/core/widgets/custom_header_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'all_expenses_items.dart';
import '../../../../../core/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        CustomHeaderBuilder.allExpensesHeader(),
        const Gap(16),
        const AllExpensesItems(),
      ],
    ));
  }
}
