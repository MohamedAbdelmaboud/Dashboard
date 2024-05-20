import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/models/card_model.dart';

class CardInfoTile extends StatelessWidget {
  const CardInfoTile({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 20, right: 30, top: 12),
      title: Text(
        'Card Name',
        style: AppStyles.styleRegular12(context).copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        cardModel.cardName,
        style: AppStyles.styleMedium16(context).copyWith(
          color: Colors.white,
        ),
      ),
      trailing: SvgPicture.asset(
        cardModel.imagePath,
        height: 24,
      ),
    );
  }
}
