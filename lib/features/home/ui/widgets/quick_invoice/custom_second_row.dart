import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'title_text_field.dart';

class CustomSecondRow extends StatelessWidget {
  const CustomSecondRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: TitleTextField(
            title: 'Item name',
            hintText: 'Enter item name',
          ),
        ),
        Gap(16),
        Expanded(
          child: TitleTextField(
            title: 'Item mount',
            hintText: 'Enter item mount',
          ),
        ),
      ],
    );
  }
}
