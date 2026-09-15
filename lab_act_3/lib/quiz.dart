import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: const Center(
        child: Text(
          'Quiz Started!',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}