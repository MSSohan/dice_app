import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: const Center(child: Text("Let's Roll")),
          backgroundColor: Colors.black12,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void  updateDice () {
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[

          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                fixedSize: const Size(200.0, 200.0),
              ),
              onPressed: () {
                setState(() {
                  updateDice();
                });
              },
              child: Center(
                child: Image.asset(
                  'assets/images/dice$leftDiceNumber.png',
                ),
              ),
            ),
          ),

          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                fixedSize: const Size(200.0, 200.0),
              ),
              onPressed: () {
                setState(() {
                  updateDice();
                });
              },
              child: Center(
                child: Image.asset(
                  'assets/images/dice$rightDiceNumber.png',
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}





