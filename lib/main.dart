import 'package:flutter/material.dart';
import 'package:rolldice/gradient_conatiner.dart';
import 'package:rolldice/style_text.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceRoll(),
    ));

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => DiceRollState();
}

class DiceRollState extends State<DiceRoll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyleText(),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: const GradientContainer(),
    );
  }
}


//test
//test
