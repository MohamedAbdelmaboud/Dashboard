import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/features/home/data/models/user_info_model.dart';
import 'package:dashboard/features/home/ui/widgets/user_info_tile.dart';
import 'package:flutter/material.dart';

class UsersInfoListView extends StatelessWidget {
  const UsersInfoListView({
    super.key,
  });
  static List<UserInfoModel> userInfoModels = [
    const UserInfoModel(
      title: 'Mohamed Abdelmaboud',
      imagePath: Assets.imagesAvatar1,
      subTitle: 'abdelmaboud@gmail.com',
    ),
    const UserInfoModel(
      title: 'Mohamed Rashad',
      imagePath: Assets.imagesAvatar2,
      subTitle: 'Rashad@gmail.com',
    ),
    const UserInfoModel(
      title: 'Esraa Mohamed',
      imagePath: Assets.imagesAvatar3,
      subTitle: 'Esraa@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // We have two solutions for this
    // 1. Use a listview.builder
    // 2. Use a row
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          userInfoModels.length,
          (index) => IntrinsicWidth(
              child: UserInfoTile(
            userInfoModel: userInfoModels[index],
          )),
        ),
      ),
    );
  //   return SizedBox(
  //     height: 80,
  //     child: ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: userInfoModels.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return IntrinsicWidth(
  //           child: UserInfoTile(
  //             userInfoModel: userInfoModels[index],
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // 
}
}
