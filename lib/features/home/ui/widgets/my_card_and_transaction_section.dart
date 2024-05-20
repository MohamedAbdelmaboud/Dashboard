import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'my_card_section.dart';
import 'transaction_history_section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            color: Color(0XFFF1F1F1),
            height: 20 + 20, // 20 top and 20 bottom
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
