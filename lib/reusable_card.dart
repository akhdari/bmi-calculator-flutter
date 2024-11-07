import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color color;
  //nullable property
  final Widget? cardChild;
  //if not provided with input set to default
  //give our class the ability to take a function as a named argument
  final GestureTapCallback? onTap_method;
  //can be null because it is not required for example for child 2 and 3


  ReusableCard(
      {this.color = const Color(0xFF6F7693),
      this.cardChild,
      this.onTap_method}) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap_method,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}

/*
method2:
maleCardColor=inactiveCardColor;
femaleCardColor=inactiveCardColor;
int isMaleSelected=1;

changeColor(){
//male:1
if(isMaleSelected==1){
  if(maleCardColor==inactiveCardColor){
     maleCardColor=activeCardColor}
  else {maleCardColor=activeCardColor}
same for female
}
*/