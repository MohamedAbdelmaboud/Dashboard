import 'package:flutter/material.dart';

class CardModel {
  String imagePath;
  String cardName;
  Color? color;
  CardModel({
    required this.imagePath,
    required this.cardName,
     this.color,
  });
}
