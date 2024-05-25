import 'dart:math';

import 'package:dashboard/core/widgets/ios_icon.dart';
import 'package:flutter/material.dart';

import 'all_expenses_icon.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.imagePath,
    this.isActive = false,
  });
  final String imagePath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: AllExpensesIcon(imagePath: imagePath, isActive: isActive),
        ),
        IosIcon(
          angle: -pi,
          isActive: isActive,
        ),
      ],
    );
  }
}
