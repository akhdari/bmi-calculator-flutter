import 'package:flutter/material.dart';
import 'constants.dart';

//Parent
class ParentSelect extends StatefulWidget {
  final String theText;
  final int initialNumber;
  final ValueChanged<int> onChanged;
  ParentSelect({required this.theText, required this.initialNumber, required this.onChanged});

  @override
  State<ParentSelect> createState() => _ParentSelectState();
}

class _ParentSelectState extends State<ParentSelect> {
  late int number = widget.initialNumber;

  void onIncrement() {
    setState(() {
      number++;
    });
    widget.onChanged(number);
  }

  void onDecrement() {
    setState(() {
      number--;
    });
    widget.onChanged(number);
  }

  @override
  Widget build(BuildContext context) {
    return Select(
      increment: onIncrement,
      decrement: onDecrement,
      text: widget.theText,
      number: number,
    );
  }
}

//Child
class Select extends StatelessWidget {
  final String text;
  final int number;
  //VoidCallback:To Trigger Actions from Child to Parent


  final VoidCallback increment;
  final VoidCallback decrement;

  const Select(
      {required this.text,
      required this.decrement,
      required this.increment,
      required this.number});

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$text',
          style: kText_theme.bodySmall,
        ),
        Text(number.toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //ADD
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  decrement();
                },
                icon: Icon(Icons.remove),
              ),
            ),
            //MiNIMIZE
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  increment();
                },
                icon: Icon(Icons.add),
              ),
            ),
          ],
        )
      ],
    );
  }
}
