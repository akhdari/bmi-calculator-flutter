import 'package:flutter/material.dart';
class Content_ReusableCard extends StatelessWidget {
  final String text;
  final IconData gender;
//VoidCallback type, which is a type alias for a function that takes no arguments and returns no value.
//? can be null = not required
//GestureTapCallback?: type of the onTap property of the GestureDetector widget

  Content_ReusableCard({
    required this.text,
    required this.gender,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$text',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}