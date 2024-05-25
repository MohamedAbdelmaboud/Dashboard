import 'package:dashboard/core/utils/size_config.dart';
import 'package:flutter/material.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsivefontSize = scaleFactor * fontSize;
  //************/
  double lowerLimit = responsivefontSize * 0.8; // It decreases by 20 %
  double upperLimit = responsivefontSize * 1.20; // It increases by 20 %
  double finalFontSize = responsivefontSize.clamp(lowerLimit, upperLimit);

  return finalFontSize;
}

double getScaleFactor(BuildContext context) {
  // dispatcher

  // every time trigger this method (trigger the media query ),it will return a new scale factor and rebuild the ui

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 650; // scale factor for mobile --> 400 reference width
  } else if (width < SizeConfig.desktop) {
    return width / 1100; // scale factor for tablet --> 700 reference width
  } else {
    return width / 1500; // scale factor for desktop --> 1100  reference width
  }
}
// scale factor
// get responsive font 
// min max
