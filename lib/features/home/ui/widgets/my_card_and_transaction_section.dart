import 'package:dashboard/features/home/ui/layouts/desktop_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'my_card_section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Gap(40),
        MyCardSection(),
      ],
    );
  }
}
