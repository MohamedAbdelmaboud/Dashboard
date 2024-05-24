import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/features/home/ui/widgets/custom_drawer/custom_drawer.dart';
import 'package:dashboard/features/home/ui/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../widgets/mobile_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? MobileAppBar(
              scaffoldKey: scaffoldKey,
            )
          : null,
      backgroundColor: AppColors.greyColor,
      body: const HomeViewBody(),
    );
  }
}
