import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
    required this.trailingWidget,
  });

  final String title;
  final Widget trailingWidget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: AppColors.secondaryColor),
        ),
        trailingWidget
      ],
    );
  }
}
