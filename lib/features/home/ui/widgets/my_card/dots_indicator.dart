import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';

class DotsIndicator extends StatefulWidget {
  const DotsIndicator({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  State<DotsIndicator> createState() => _DotsIndicatorState();
}

class _DotsIndicatorState extends State<DotsIndicator> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: widget.isActive ? 32 : 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:
              widget.isActive ? AppColors.primaryColor : AppColors.balckColor),
    );
  }
}
