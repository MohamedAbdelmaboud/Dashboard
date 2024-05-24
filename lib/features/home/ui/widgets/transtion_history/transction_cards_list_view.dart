import 'package:dashboard/features/home/data/models/transaction_model.dart';
import 'package:dashboard/features/home/ui/widgets/transtion_history/transaction_card.dart';
import 'package:flutter/material.dart';

class TransctionCardsListView extends StatelessWidget {
  const TransctionCardsListView({
    super.key,
  });

  static List<TransactionModel> transactionModels = [
    TransactionModel(
      title: 'Cash Withdrawal',
      subtitle: '13 Apr, 2022',
      amount: r'$20,129',
    ),
    TransactionModel(
      title: 'Landing Page project',
      subtitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      withdrawal: true,
    ),
    TransactionModel(
      title: 'Mobile App project',
      subtitle: '13 Apr, 2022',
      amount: r'$20,129',
      withdrawal: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // We have two solutions for this but this is the best for عدد محدود
    // USE COLUMN
    return Column(
      children: transactionModels
          .asMap()
          .entries
          .map((e) => TransactionCard(transactionModel: e.value))
          .toList(),
    );
    return Column(
      children: transactionModels
          .map((e) => TransactionCard(transactionModel: e))
          .toList(),
    );
    return ListView.builder(
      itemCount: transactionModels.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return TransactionCard(transactionModel: transactionModels[index]);
      },
    );
  }
}
