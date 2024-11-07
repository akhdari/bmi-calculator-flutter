import 'package:flutter/material.dart';

//defining colors as const values is a good practice in Flutter
//k= for constants , the letter after is capital
const Color kWhite = Colors.white;
const Color kInactiveCardColor = Color(0xFF6F7693);
const Color kActiveCardColor = Color(0xFFBABFD3);
const kButtomContainerHeight = 80.0;
const kThumbColor = Color(0xFFEB1555);
const kOverlayColor = Color(0x1fEB1555);
//TextTheme
const kText_theme = TextTheme(
  bodySmall: TextStyle(color: Color(0xFF8D8E98), fontSize: 18),
  bodyMedium: TextStyle(
    color: kWhite,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
     color: kWhite,
    fontSize: 70,
    //fontWeight: FontWeight.bold,
  )

);

const kObservation_text_theme=TextStyle(
  fontSize: 15,
  color:Color(0xFF008000),
  fontWeight: FontWeight.bold, 
);
//ColorTheme
var kColor_theme = ColorScheme.light(
  primary: Color(0xFF0C1134),
  secondary: Colors.grey.withOpacity(0.3),
  tertiary: Color(0xFFFD0225),
  
);
const kSliderTheme = SliderThemeData(
  activeTrackColor: kWhite,
  thumbColor: kThumbColor,
  overlayColor: kOverlayColor,
  overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
);
