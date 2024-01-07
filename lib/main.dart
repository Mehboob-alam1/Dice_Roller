import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(style: TextStyle(color: Colors.white), 'Dice'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {

                setState(() {
                  rightDiceNumber=Random().nextInt(6)+1;
                });


              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {

                setState(() {
                  leftDiceNumber=Random().nextInt(6)+1;
                });


              },
              child: Image.asset('images/dice$leftDiceNumber.png'),

            ),
          )
        ],
      ),
    );
  }
}



