import 'package:dashboard/core/themes/app_styles.dart';
import 'package:dashboard/features/home/ui/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'page_view_cards.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(12),
          Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
          const Gap(12),
          const PageViewCards(),

          //dots indicator
        ],
      ),
    );
  }
}
