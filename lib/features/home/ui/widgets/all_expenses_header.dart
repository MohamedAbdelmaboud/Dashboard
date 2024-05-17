import 'dart:math';

import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

import 'drop_down_range.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOfExpenses(
          angle: -pi / 2.0,
        )
      ],
    );
  }
}
