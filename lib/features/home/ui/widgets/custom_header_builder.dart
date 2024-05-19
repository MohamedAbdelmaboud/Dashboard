import 'dart:math';
import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/features/home/ui/widgets/custom_header.dart';
import 'package:dashboard/features/home/ui/widgets/drop_down_range.dart';
import 'package:flutter/material.dart';

class CustomHeaderBuilder {
  
  static quickInvoiceHeader() {
    return const CustomHeader(
      title: 'Quick Invoice',
      trailingWidget: Icon(
        Icons.add,
        color: AppColors.primaryColor,
      ),
    );
  }

  static allExpensesHeader() {
    return const CustomHeader(
      title: 'All Expenses',
      trailingWidget: RangeOfExpenses(
        angle: -pi / 2.0,
      ),
    );
  }
}
