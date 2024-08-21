import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Building custom widget as GradientContainer
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
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
