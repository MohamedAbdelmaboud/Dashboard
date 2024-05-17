import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'ios_icon.dart';

class RangeOfExpenses extends StatelessWidget {
  const RangeOfExpenses({
    super.key,
    required this.angle,
  });
  final double angle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const Gap(18),
          IosIcon(angle: angle),
        ],
      ),
    );
  }
}
