import 'package:flutter/material.dart';
import 'constants.dart';


//enum navigatorActionType{ push, pop}


class BottomBottun extends StatefulWidget {
  final String text;
  final Function navigatorAction;
  BottomBottun({required this.text, required this.navigatorAction,}) {}

  @override
  State<BottomBottun> createState() => _BottomBottunState();
}

class _BottomBottunState extends State<BottomBottun> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: kButtomContainerHeight),
      margin: EdgeInsets.only(
        top: 15,
      ),
      color: kSliderTheme.thumbColor,
      //height: kButtomContainerHeight,
      child: GestureDetector(
        onTap: () {
          setState(() {
           
           widget.navigatorAction();
           widget.text;
          });
        },
        child: Container(
          padding: EdgeInsets.only(bottom: 15),
          child: Center(
            child: Text(
              widget.text,
              style: kText_theme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
