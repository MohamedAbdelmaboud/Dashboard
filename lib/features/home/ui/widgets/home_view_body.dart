import 'package:dashboard/features/home/ui/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

import 'desktop_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktopLayout: (context) => const DesktopLayout(),
      tabletLayout: (context) => const SizedBox(),
      mobileLayout: (context) => const SizedBox(),
    );
  }
}
