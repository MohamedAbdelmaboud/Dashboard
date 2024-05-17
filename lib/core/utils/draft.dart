// three break points --> desktop , mobile , tablet
//  mobile 600 , tablet 900 , desktop 1200
import 'package:flutter/material.dart';

getResponsiveFontSize(double fontSize, BuildContext context) {
  double scaleFactor = getScaleFactor(context);
  double resonsiveFont = fontSize * scaleFactor;
//  min , max
// upperLimit --> min font
// lowerLimit --> max font
  double upperLimit = resonsiveFont * 1.20;
  double lowerLimit = resonsiveFont * 0.80;
  return resonsiveFont.clamp(lowerLimit, upperLimit); // between lowe and upper
}

getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width /
        400; // scale factor for mobile --> 400 reference width  --> decrese or increse
  } else if (width < 900) {
    return width / 700; // scale factor for tablet --> 700 reference width
  } else {
    return width / 1100; // scale factor for desktop --> 1100  reference width
  }
}
