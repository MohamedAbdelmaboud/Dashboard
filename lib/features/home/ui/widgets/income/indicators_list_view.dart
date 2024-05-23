import 'package:dashboard/features/home/data/models/indicator_item.dart';
import 'package:dashboard/features/home/data/models/indicator_model.dart';
import 'package:flutter/material.dart';

class IndicatorsListView extends StatelessWidget {
  const IndicatorsListView({
    super.key,
  });
  static List<IndicatorModel> items = [
    IndicatorModel(
      color: const Color(0xFF208BC7),
      title: 'Design service',
      value: '%40',
    ),
    IndicatorModel(
      color: const Color(0xFF4DB7F2),
      title: 'Design product',
      value: '%25',
    ),
    IndicatorModel(
      color: const Color(0xFF064060),
      title: 'Product royalti',
      value: '%20',
    ),
    IndicatorModel(
      color: const Color(0xFFE2DECD),
      title: 'Other',
      value: '%22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return IndicatorItem(model: items[index]);
      },
    );
  }
}
