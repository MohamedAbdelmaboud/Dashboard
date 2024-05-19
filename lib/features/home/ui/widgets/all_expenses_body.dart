import 'package:dashboard/features/home/ui/widgets/custom_header_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'all_expenses_items.dart';
import 'custom_background_container.dart';

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({
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
