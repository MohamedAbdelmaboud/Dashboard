import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/features/home/ui/widgets/quick_invoice/custom_button.dart';
import 'package:flutter/material.dart';

class CustomButtonBuilder {
  static CustomButton primaryButton() {
    return const CustomButton(
        backgroundColor: AppColors.primaryColor, colorText: Colors.white);
  }

  static CustomButton secondaryButton() {
    return const CustomButton(
        backgroundColor: Colors.white, colorText: AppColors.primaryColor);
  }
}
