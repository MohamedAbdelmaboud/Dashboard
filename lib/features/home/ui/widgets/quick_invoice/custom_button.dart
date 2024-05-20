import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;

  final Color colorText;

  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: const Size.fromHeight(50),
        alignment: Alignment.center,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        'Add more details',
        style: AppStyles.styleMedium16(context).copyWith(color: colorText),
      ),
    );
  }
}
