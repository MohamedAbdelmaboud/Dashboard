import 'package:dashboard/core/themes/app_styles.dart';
import 'package:dashboard/features/home/data/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.imagePath ,),
        title: Text(
          userInfoModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
