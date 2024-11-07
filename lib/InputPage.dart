import 'package:flutter/material.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/reusableCardContent.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/select.dart';
import 'bottom_button.dart';
import 'bmi_brain.dart';

enum Gender {
  male,
  female,
  neither_the_two,
}
Gender whatGender = Gender.neither_the_two;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color changeColor(Gender gender) {
  return (gender == whatGender) ? kActiveCardColor : kInactiveCardColor;
}

//input page class
class _InputPageState extends State<InputPage> {
bool isPressed = true;
double height = 0.0;
int weight = 80; 
int age = 19; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'BMI CALCULATOR',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //child1
            Expanded(
                child: Row(
              children: [
                //Row1 of child1
                Expanded(
                  child: ReusableCard(
                    onTap_method: () {
                      setState(() {
                        whatGender = Gender.male;
                      });
                    },
                    color: changeColor(Gender.male),
                    cardChild: Content_ReusableCard(
                      text: 'MALE',
                      gender: Icons.male,
                    ),
                  ),
                ),

                //Row2 of child1
                Expanded(
                  child: ReusableCard(
                    onTap_method: () {
                      setState(() {
                        whatGender = Gender.female;
                      });
                    },
                    color: changeColor(Gender.female),
                    cardChild: Content_ReusableCard(
                      text: 'FEMALE',
                      gender: Icons.female,
                    ),
                  ),
                ),
              ],
            )),
//TODO
            //child2
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  children: [
                    Text(
                      "HEIGHT",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toStringAsFixed(0),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          "cm",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    //since we are only capable of changing the color of thumb and not anything else from the slider constructor, we need to wrap it with its theme widget

                    SliderTheme(
                      data: kSliderTheme,
                      child: Slider(
                          value: height,
                          min: 0.0,
                          max: 255,
                          onChanged: (newHeight) {
                            setState(() {
                              height = newHeight;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),

            //child3
            Expanded(
              child: Row(
                children: [
                  //Row1 of child3
                  Expanded(
                    child: ReusableCard(
                      cardChild: ParentSelect(
                        theText: 'WEIGHT',
                        initialNumber: 80,
                        onChanged: (newWeight){
                          setState(() {
                             weight=newWeight;
                          });
                        },
                      ),
                    ),
                  ),
                  //Row2 of child3
                  Expanded(
                    child: ReusableCard(
                      cardChild: ParentSelect(
                        theText: 'AGE',
                        initialNumber: 19,
                        onChanged: (newAge){
                          setState(() {
                            age=newAge;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //we cant use the reusable card bcs we need to reset the margin which not a paramater
            BottomBottun(
              text: 'CALCULATE YOUR BMI',
              navigatorAction:(){
                Navigator.pushNamed(
                  context,
                  '/secondRoute',
                  arguments: BmiBrain(height: height, weight:weight,) ,);

              } ,
            )
          ], //children
        ),
      ),
    );
  }
}
