import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Title text',
            style: TextStyle(
                fontSize: getResponsiveFontSize(context,
                    fontSize: 20)), // fixed scale factor
          ),
          Text(
            'This is the beginng of the app',
            style: TextStyle(
                fontSize: getResponsiveFontSize(context,
                    fontSize: 16)), // fixed scale factor
          ),
        ],
      ),
    );
  }
}

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
