import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

import '../../data/models/transaction_model.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Card(
        color: const Color(0xffFAFAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(
            transactionModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            transactionModel.subtitle,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            transactionModel.amount,
            style: AppStyles.styleSemiBold18(context).copyWith(
                color: transactionModel.withdrawal
                    ? const Color(0xff7DD97B)
                    : const Color(0xffF3735E)),
          ),
        ),
      ),
    );
  }
}
