import 'package:dashboard/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class IosIcon extends StatelessWidget {
  const IosIcon({
    super.key,
    required this.angle,
    this.isActive = false,
  });

  final double angle;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Icon(
        Icons.arrow_back_ios_rounded,
        size: 15,
        color: isActive ? Colors.white : AppColors.secondaryColor,
      ),
    );
  }
}
