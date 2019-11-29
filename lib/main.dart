import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDiceNumber = 1, rDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  lDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$lDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Image.asset('images/dice$rDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
