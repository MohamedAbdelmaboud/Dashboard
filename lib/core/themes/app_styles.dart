import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/utils/responsive_fontsize_calculator.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: AppColors.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: AppColors.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: AppColors.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: AppColors.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'JetBrainsMono',
      fontWeight: FontWeight.w600,
    );
  }
}
