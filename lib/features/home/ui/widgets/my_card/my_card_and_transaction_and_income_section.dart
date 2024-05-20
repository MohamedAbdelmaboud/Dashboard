import 'package:dashboard/features/home/ui/widgets/my_card/my_card_and_transaction_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      ],
    );
  }
}
