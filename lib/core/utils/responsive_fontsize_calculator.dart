import 'package:flutter/material.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsivefontSize = scaleFactor * fontSize;
  //************/
  double lowerLimit = responsivefontSize * 0.8; // less than 20 %
  double upperLimit = responsivefontSize * 1.20; // larger than 20 %
  double finalFontSize = responsivefontSize.clamp(lowerLimit, upperLimit);

  print(
      'the font size is $fontSize ◘◘ The responsivefontSize is $responsivefontSize ◘◘ upper: $upperLimit ◘◘ lowerLimit :$lowerLimit, the final font : $finalFontSize');
  return finalFontSize;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400; // scale factor for mobile --> 400 reference width
  } else if (width < 900) {
    return width / 700; // scale factor for tablet --> 700 reference width
  } else {
    return width / 1100; // scale factor for desktop --> 1100  reference width
  }
}
