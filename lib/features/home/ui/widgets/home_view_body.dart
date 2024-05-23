import 'package:dashboard/features/home/ui/layouts/mobile_layout.dart';
import 'package:dashboard/features/home/ui/layouts/tablet_layout.dart';
import 'package:dashboard/features/home/ui/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

import '../layouts/desktop_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktopLayout: (context) => const DesktopLayout(),
      tabletLayout: (context) => const TabletLayout(),
      mobileLayout: (context) => const MobileLayout(),
    );
  }
}
