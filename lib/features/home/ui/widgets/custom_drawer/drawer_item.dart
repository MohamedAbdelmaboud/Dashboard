import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/themes/app_styles.dart';
import 'package:dashboard/features/home/data/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    this.isActive = false,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.imagePath),
      title: Text(
        drawerItemModel.title,
        style: isActive
            ? AppStyles.styleBold16(context)
            : AppStyles.styleRegular16(context),
      ),
      trailing: Visibility(
        visible: isActive,
        child: Container(
          color: AppColors.primaryColor,
          width: 3.27,
        ),
      ),
    );
  }
}
