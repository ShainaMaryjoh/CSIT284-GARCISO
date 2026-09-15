import 'package:flutter/material.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.deepPurple,
            Colors.purpleAccent,
          ],
        ),
      ),
      child: Center(
  child: Image.asset(
    'assets/quiz-logo.png',
    width: 200,
  ),
),
    );
  }
}