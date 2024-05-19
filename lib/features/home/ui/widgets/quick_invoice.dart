import 'package:dashboard/features/home/ui/widgets/custom_background_container.dart';
import 'package:dashboard/features/home/ui/widgets/custom_header_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_button_builder.dart';
import 'custom_first_row.dart';
import 'custom_second_row.dart';
import 'latest_transaction_section.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          CustomHeaderBuilder.quickInvoiceHeader(),
          const Gap(24),
          const LatestTransactionSection(),
          const Divider(
            height: 24 * 2,
            color: Color(0xffF1F1F1),
          ),
          const CustomFirstRow(),
          const Gap(24),
          const CustomSecondRow(),
          const Gap(24),
          Row(
            children: [
              Expanded(
                child: CustomButtonBuilder.secondaryButton(),
              ),
              const Gap(24),
              Expanded(
                child: CustomButtonBuilder.primaryButton(),
              )
            ],
          )
        ],
      ),
    );
  }
}
