import 'dart:math';

import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/widgets/ios_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFFFFFFF).withOpacity(0.10000000149011612),
          ),
          child: SvgPicture.asset(
            imagePath,
            colorFilter: ColorFilter.mode(
              isActive ? Colors.white : AppColors.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        const Spacer(),
        IosIcon(
          angle: -pi,
          isActive: isActive,
        )
      ],
    );
  }
}
