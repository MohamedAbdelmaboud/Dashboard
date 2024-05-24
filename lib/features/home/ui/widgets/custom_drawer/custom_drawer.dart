import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/features/home/ui/widgets/transtion_history/user_info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../data/models/user_info_model.dart';
import 'list_drawer_items.dart';
import 'static_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: const Color(0xFFFFFFFF),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
          SliverToBoxAdapter(child: Gap(20)),
          ListDrawerItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: StaticDrawerItems(),
          ),
        ],
      ),
    );
  }
}
