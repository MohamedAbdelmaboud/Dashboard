import 'package:dashboard/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesIcon extends StatelessWidget {
  const AllExpensesIcon({
    super.key,
    required this.imagePath,
    required this.isActive,
  });

  final String imagePath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFFFFFFF).withOpacity(0.1),
      ),
      child: SizedBox(
        child: SvgPicture.asset(
          imagePath,
          colorFilter: ColorFilter.mode(
            isActive ? Colors.white : AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
