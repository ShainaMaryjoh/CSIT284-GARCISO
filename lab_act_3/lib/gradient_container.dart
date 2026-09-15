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
          colors: [
            Colors.green,
            Colors.brown,
          ],
        ),
      ),
      child: Center(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        'assets/quiz-logo.png',
        width: 200,
      ),
      const SizedBox(height: 30),
      const StyledText('Learn Flutter the fun way!'),
    ],
  ),
),
    );
  }
}