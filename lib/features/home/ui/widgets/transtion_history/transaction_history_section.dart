import 'package:dashboard/core/widgets/custom_header_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'transction_cards_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeaderBuilder.transactionHistoryHeader(context),
        const Gap(20),
        const TransctionCardsListView(),
      ],
    );
  }
}
