import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Building custom widget as GradientContainer
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(111.0),
              child: Image.asset(
                'assets/images/dice1.png',
                width: 200,
              ),
            ),
          ),
          Container(
            width: 150,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold)),
              child: const Text('Roll Dice'),
            ),
          )
        ],
      ),
    );
  }
}
