import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/features/home/ui/widgets/custom_drawer/drawer_item.dart';
import 'package:dashboard/features/home/ui/widgets/transtion_history/user_info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../data/models/drawer_item_model.dart';
import '../../../data/models/user_info_model.dart';
import 'list_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 28.0),
      child: Container(
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: UserInfoTile(
                  userInfoModel: UserInfoModel(
                    imagePath: Assets.imagesAvatar3,
                    subTitle: 'demo@gmail.com',
                    title: 'Lekan Okeowos',
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: Gap(20)),
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
      ),
    );
  }
}
