import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/features/home/data/models/drawer_item_model.dart';
import 'package:dashboard/features/home/ui/widgets/custom_drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class ListDrawerItems extends StatefulWidget {
  const ListDrawerItems({
    super.key,
  });

  @override
  State<ListDrawerItems> createState() => _ListDrawerItemsState();
}

class _ListDrawerItemsState extends State<ListDrawerItems> {
  // Dashboard ,My Transaction,Statistics,Wallet Account,My Investments
  List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', imagePath: Assets.imagesDashboard),
    DrawerItemModel(
        title: 'My Transaction', imagePath: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', imagePath: Assets.imagesStatistics),
    DrawerItemModel(
        title: 'Wallet Account', imagePath: Assets.imagesWalletAccount),
    DrawerItemModel(
        title: 'My Investments', imagePath: Assets.imagesMyInvestments),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            if (currentIndex != index) {
              currentIndex = index;
              setState(() {});
              print(currentIndex);
            }
          },
          child: DrawerItem(
            drawerItemModel: drawerItems[index],
            isActive: currentIndex == index,
          ),
        );
      },
    );
  }
}
