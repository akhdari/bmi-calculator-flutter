import 'package:flutter/material.dart';
import 'InputPage.dart';
import 'constants.dart';
import 'result.dart';
//main=theming+direct to other screens+what is the app going to be named

void main() => runApp(BMICalculator());

//BMI calculator class
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/secondRoute': (context)=> Result(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF04040C),
        colorScheme: kColor_theme,
        textTheme:kText_theme,
      ),
      home: InputPage(),
    );
  }
}

//#04040C
