import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/features/home/data/models/drawer_item_model.dart';
import 'package:dashboard/features/home/ui/widgets/custom_drawer/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StaticDrawerItems extends StatelessWidget {
  const StaticDrawerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        DrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Settings System',
            imagePath: Assets.imagesSettings,
          ),
        ),
        DrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Logout',
            imagePath: Assets.imagesLogout,
          ),
        ),
        const Gap(48),
      ],
    );
  }
}
