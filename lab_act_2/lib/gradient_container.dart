import 'package:flutter/material.dart';
import 'styled_text.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.greenAccent],
        ),
      ),
      child: Center(
        child: Image.asset('assets/dice-images/dice-3.png')
        ),
    );
  }
}