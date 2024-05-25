import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/utils/app_images.dart';
import 'package:dashboard/features/home/data/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'card_details.dart';
import 'card_info_tile.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 230,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: cardModel.color ?? AppColors.primaryColor,
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CardInfoTile(
              cardModel: cardModel,
            ),
            const Spacer(),
            const CardDetails(),
            const Flexible(
              child: Gap(
                54 - 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
