import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '0 15 5576 1846',
            style: AppStyles.styleSemiBold16(context)
                .copyWith(color: Colors.white),
          ),
          Text(
            '12/20 - 124',
            style: AppStyles.styleRegular14(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
