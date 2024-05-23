import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomePieChart extends StatefulWidget {
  const IncomePieChart({
    super.key,
  });

  @override
  State<IncomePieChart> createState() => _IncomePieChartState();
}

class _IncomePieChartState extends State<IncomePieChart> {
  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 30.0 : 20.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff064061),
            value: 40,
            radius: radius,
            showTitle: false,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xff208CC8),
            value: 25,
            radius: radius,
            showTitle: false,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff4EB7F2),
            value: 20,
            radius: radius,
            showTitle: false,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xffE2DECD),
            value: 22,
            radius: radius,
            showTitle: false,
          );
        default:
          throw Error();
      }
    });
  }

  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              touchPie(event, pieTouchResponse);
            },
          ),
          sectionsSpace: 0,
          sections: showingSections(),
        ),
      ),
    );
  }

  void touchPie(FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
    setState(() {
      if (!event.isInterestedForInteractions ||
          pieTouchResponse == null ||
          pieTouchResponse.touchedSection == null) {
        touchedIndex = -1;
        return;
      }
      touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
    });
  }
}
