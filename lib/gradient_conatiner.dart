import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// Building custom widget as GradientContainer
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.indigo.shade900,
          Colors.indigo.shade100,
        ],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: const Center(
        child: Text(
          'Hello, FlutterDev',
          style: TextStyle(color: Colors.white, fontSize: 28.0),
        ),
      ),
    );
  }
}
