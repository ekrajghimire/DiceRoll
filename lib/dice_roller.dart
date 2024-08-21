import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice1.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice2.png';
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
              activeDiceImage,
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
