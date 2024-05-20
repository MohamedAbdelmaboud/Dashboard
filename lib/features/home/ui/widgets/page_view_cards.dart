import 'package:dashboard/core/themes/app_colors.dart';
import 'package:dashboard/core/utils/app_images.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/models/card_model.dart';
import 'all_dots.dart';
import 'my_card.dart';

class PageViewCards extends StatefulWidget {
  const PageViewCards({
    super.key,
  });

  @override
  State<PageViewCards> createState() => _PageViewCardsState();
}

class _PageViewCardsState extends State<PageViewCards> {
  late PageController _pageController;
  int currentIndex = 0;
  List<CardModel> cardsModels = [
    CardModel(
      cardName: 'hama Rashd ♥',
      imagePath: Assets.imagesVisa,
    ),
    CardModel(
      cardName: 'Abdo ♥',
      imagePath: Assets.imagesMastercard,
      color: AppColors.secondaryColor,
    ),
    CardModel(
      cardName: 'Mohamed',
      imagePath: Assets.imagesCreditCard,
      color: AppColors.balckColor,
    ),
  ];
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose(); //remove resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExpandablePageView.builder(
        controller: _pageController,
        itemCount: 3,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return MyCard(
            cardModel: cardsModels[index],
          );
        },
      ),
      const Gap(19),
      AllDots(
      pageIndex: currentIndex,
        pageController: _pageController,
      ),
    ]);
  }
}
