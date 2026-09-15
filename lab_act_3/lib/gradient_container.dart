import 'package:flutter/material.dart';
import 'questions.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {
  var quizStarted = false;

  void startQuiz() {
    setState(() {
      quizStarted = true;
    });
  }

  @override
  Widget build(context) {
   if (quizStarted) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          questions[0].question,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        ...questions[0].answers.map(
          (answer) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(answer),
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 30, 83, 2),
            Color.fromARGB(255, 137, 102, 91),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/quiz-logo.png',
              width: 250,
            ),
            const SizedBox(height: 40),
            const Text(
              'Test Your Flutter Knowledge!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: startQuiz,
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}