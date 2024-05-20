import 'package:dashboard/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TitleTextField extends StatelessWidget {
  final String hintText;

  final String title;

  const TitleTextField(
      {super.key, required this.hintText, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const Gap(12),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            border: buildBorder(),
            focusedBorder: buildBorder(),
            enabledBorder: buildBorder(),
            hintText: hintText,
            hintStyle: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA)),
            filled: true,
            fillColor: const Color(0xffFAFAFA),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xffFAFAFA),
        ));
  }
}
