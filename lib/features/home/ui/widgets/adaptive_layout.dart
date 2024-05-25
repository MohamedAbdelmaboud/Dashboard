import 'package:dashboard/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          // less than tablet u are in mobile
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          // less than desktop u are in tablet
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
