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
var quizCompleted = false;
var currentQuestionIndex = 0;
var correctAnswers = 0;

List<String> selectedAnswers = [];

  void startQuiz() {
    setState(() {
      quizStarted = true;
    });
  }

 void answerQuestion(String selectedAnswer) {
  setState(() {
    selectedAnswers.add(selectedAnswer);
    if (selectedAnswer == questions[currentQuestionIndex].correctAnswer) {
      correctAnswers++;
    }

    if (currentQuestionIndex < questions.length - 1) {
      currentQuestionIndex++;
    } else {
      quizCompleted = true;
    }
  });
}

void restartQuiz() {
  setState(() {
    quizStarted = false;
    quizCompleted = false;
    currentQuestionIndex = 0;
    correctAnswers = 0;
    selectedAnswers = [];
  });
}

  @override
  Widget build(context) {

  if (quizCompleted) {
  return SingleChildScrollView(
    child: Center(
      child: Container(
      
      width: 350,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Quiz Completed!',
            style: TextStyle(
              fontSize: 32,
              color: Color.fromARGB(255, 2, 72, 15),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'You answered $correctAnswers out of ${questions.length} questions correctly!',
            style: const TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 2, 80, 14),
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 20),

...questions.asMap().entries.map(
  (entry) {
    final index = entry.key;
    final question = entry.value;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${index + 1}. ${question.question}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),

         Text(
  'Your answer: ${selectedAnswers[index]}',
  style: TextStyle(
    fontSize: 16,
    color: selectedAnswers[index] == question.correctAnswer
        ? Colors.green
        : Colors.red,
    fontWeight: FontWeight.bold,
  ),
),
          Text(
            'Correct answer: ${question.correctAnswer}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  },
),

const SizedBox(height: 20),
ElevatedButton(

            onPressed: restartQuiz,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    ),
  )
  );
}


   if (quizStarted) {
  return Center(
    child: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
SizedBox(
  width: 350,
  child: LinearProgressIndicator(
    value: (currentQuestionIndex + 1) / questions.length,
  ),
),
const SizedBox(height: 15),

    Text(
      'Question ${currentQuestionIndex + 1} of ${questions.length}',
      style: const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 1, 86, 58),
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(height: 15),

    Container(
  width: 350,
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.white.withOpacity(0.9),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Text(
    questions[currentQuestionIndex].question,
    style: const TextStyle(
      fontSize: 28,
      color: Color.fromARGB(255, 2, 58, 8),
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  ),
),

        const SizedBox(height: 30),
        ...questions[currentQuestionIndex].answers.map(
          (answer) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: SizedBox(
                width: 350,
                child:ElevatedButton(
  onPressed: () {
    answerQuestion(answer);
  },
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 20,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  child: Text(
    answer,
    style: const TextStyle(
      fontSize: 18,
    ),
  ),
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
                color: Color.fromARGB(255, 242, 242, 242),
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