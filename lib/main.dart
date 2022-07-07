import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DiceRoller'),
          backgroundColor: Colors.blue,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int diceNumber = 1;

  void changeDiceFace() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.purpleAccent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.4, 0.7],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Center(
        child: Expanded(
          child: IconButton(
            icon: Image.asset('Images/dice$diceNumber.jpeg'),
            iconSize: 250,
            onPressed: () {
              changeDiceFace();
            },
          ),
        ),
      ),
    );
  }
}
