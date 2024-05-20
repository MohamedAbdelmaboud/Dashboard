import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../quick_invoice/users_info_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const Gap(12),
        const UsersInfoListView(),
      ],
    );
  }
}
