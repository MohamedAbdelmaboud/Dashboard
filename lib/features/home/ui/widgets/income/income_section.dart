import 'package:dashboard/core/widgets/custom_background_container.dart';
import 'package:dashboard/core/widgets/custom_header_builder.dart';
import 'package:dashboard/features/home/ui/widgets/income/income_pie_chart_with_indicators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          CustomHeaderBuilder.incomeHeader(),
          const Gap(16),
          const IncomePieChartWithIndicators()
        ],
      ),
    );
  }
}
