import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currectDiceImage = 1;

  void rollDice() {
    setState(() {
      currectDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(111.0),
            child: Image.asset(
              'assets/images/dice$currectDiceImage.png',
              width: 200,
            ),
          ),
        ),
        SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold)),
            child: const Text('Roll Dice'),
          ),
        )
      ],
    );
  }
}
