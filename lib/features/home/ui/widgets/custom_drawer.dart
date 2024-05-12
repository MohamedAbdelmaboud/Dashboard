import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/features/home/ui/widgets/drawer_item.dart';
import 'package:dashboard/features/home/ui/widgets/user_info_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/models/drawer_item_model.dart';
import 'list_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoTile(
              imagePath: Assets.imagesAvatar3,
              subTitle: 'demo@gmail.com',
              title: 'Lekan Okeowos',
            ),
          ),
          const ListDrawerItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
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
            ),
          ),
        ],
      ),
    );
  }
}
