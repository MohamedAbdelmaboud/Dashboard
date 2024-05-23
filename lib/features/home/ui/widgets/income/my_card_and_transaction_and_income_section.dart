import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../transtion_history/my_card_and_transaction_section.dart';
import 'income_section.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Gap(40),
        MyCardAndTransactionSection(),
        Gap(16),
        IncomeSection()
      ],
    );
  }
}
