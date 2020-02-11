import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dicee App",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;

  void randomDice() {
    setState(() {
      firstDiceNumber = Random().nextInt(6) + 1;
      secondDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset("images/dice$firstDiceNumber.png"),
                onPressed: randomDice,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1, //size set gareko
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset("images/dice$secondDiceNumber.png"),
                onPressed: randomDice,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
