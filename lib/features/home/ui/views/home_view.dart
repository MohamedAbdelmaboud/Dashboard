import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/features/home/ui/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.greyColor,
      body: HomeViewBody(),
    );
  }
}
