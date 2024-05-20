import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/themes/app_styles.dart';
import 'package:dashboard/features/home/data/models/all_expenses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.model,
    this.isActive = false,
  });
  final AllExpensesItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : null,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imagePath: model.imagepath,
            isActive: isActive,
          ),
          const Gap(34),
          Text(
            model.title,
            style: AppStyles.styleSemiBold16(context)
                .copyWith(color: isActive ? Colors.white : null),
          ),
          const Gap(8),
          Text(
            model.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: isActive ? Colors.white : null),
          ),
          const Gap(16),
          Text(
            model.amount,
            style: AppStyles.styleSemiBold18(context).copyWith(
                color: isActive ? Colors.white : AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
