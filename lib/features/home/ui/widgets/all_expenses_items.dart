import 'package:dashboard/core/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../../data/models/all_expenses_item_model.dart';
import 'all_expenses_item.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({
    super.key,
  });

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  int currentIndex = 0;
  List<AllExpensesItemModel> models = [
    AllExpensesItemModel(
      imagepath: Assets.imagesBalance,
      title: 'Balance',
      date: 'July 2022',
      amount: r'$100.00',
    ),
    AllExpensesItemModel(
      imagepath: Assets.imagesIncome,
      title: 'Income',
      date: 'July 2022',
      amount: r'$100.00',
    ),
    AllExpensesItemModel(
      imagepath: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'July 2022',
      amount: r'$100.00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        models.length,
        (index) => Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              if (currentIndex != index) {
                currentIndex = index;
                setState(() {});
              }
            },
            child: AllExpensesItem(
              model: models[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
