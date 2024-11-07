import 'package:bmi_calculator/bmi_brain.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';
class Result extends StatefulWidget {
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final BmiBrain result = ModalRoute.of(context)!.settings.arguments as BmiBrain;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Your Result',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //we could've wrapped both child 1 and 2 and set flex of child1 to x
            //child1
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        result.observation().toUpperCase(),
                        style: kObservation_text_theme,
                      ),
                      Text(
                        result.bmi_calculator().toStringAsFixed(1),
                        style: kText_theme.bodyLarge,
                      ),
                      Text(
                        
                        result.advice(),
                        style: kText_theme.bodySmall,
                      )
                    ],
                  )),
            ),
            //child2
            BottomBottun(
              navigatorAction: () {
                Navigator.pop(context);
              },
              text: 'RECALCULATE YOUR BMI',
            )
          ],
        ),
      )),
    );
  }
}
