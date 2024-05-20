import 'package:flutter/material.dart';

import 'dots_indicator.dart';

class AllDots extends StatefulWidget {
  const AllDots({
    super.key,
    required this.pageController,
    required this.pageIndex,
  });
  final PageController pageController;
  final int pageIndex;
  @override
  State<AllDots> createState() => _AllDotsState();
}

class _AllDotsState extends State<AllDots> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => InkWell(
          onTap: () {
            animateToPage(index);
          },
          child: DotsIndicator(
            isActive: index == widget.pageIndex,
          ),
        ),
      ),
    );
  }

  void animateToPage(int index) {
    if (currentIndex != index) {
      setState(() {
        currentIndex = index;
      });
    }

    widget.pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
