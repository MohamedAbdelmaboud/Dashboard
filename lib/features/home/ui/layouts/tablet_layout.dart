import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_drawer/custom_drawer.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Gap(32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: MobileLayout(),
          ),
        ),
        Gap(32),
      ],
    );
  }
}
