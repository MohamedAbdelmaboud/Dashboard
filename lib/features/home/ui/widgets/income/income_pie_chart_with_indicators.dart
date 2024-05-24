import 'package:flutter/material.dart';

import 'income_pie_chart.dart';
import 'indicators_items.dart';

class IncomePieChartWithIndicators extends StatefulWidget {
  const IncomePieChartWithIndicators({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: IncomePieChart(),
        ),
        // List of indicators
        Expanded(
          flex: 2,
          child: IndicatorsItems(),
        ),
      ],
    );
  }
}
