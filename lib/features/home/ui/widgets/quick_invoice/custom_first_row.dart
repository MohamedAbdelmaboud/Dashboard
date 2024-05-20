import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'title_text_field.dart';

class CustomFirstRow extends StatelessWidget {
  const CustomFirstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: TitleTextField(
            title: 'Customer Name',
            hintText: 'Enter Customer Name',
          ),
        ),
        Gap(16),
        Expanded(
          child: TitleTextField(
            title: 'Customer Email',
            hintText: 'Enter Customer Email',
          ),
        ),
      ],
    );
  }
}
