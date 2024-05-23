import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/themes/app_styles.dart';
import 'package:dashboard/features/home/data/models/indicator_model.dart';
import 'package:flutter/material.dart';

class IndicatorItem extends StatelessWidget {
  const IndicatorItem({super.key, required this.model});
  final IndicatorModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: model.color,
        ),
        height: 12,
        width: 12,
      ),
      title: Text(
        model.title,
        style: AppStyles.styleRegular12(context).copyWith(
          color: AppColors.secondaryColor,
        ),
      ),
      trailing: Text(
        model.value,
        style: AppStyles.styleRegular14(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
