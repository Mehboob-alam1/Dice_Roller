import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(style: TextStyle(
          color: Colors.white
        ),'Dice'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Image.asset('images/dice1.png'))),
          Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Image.asset('images/dice2.png')))
        ],
      ),
    );
  }
}
