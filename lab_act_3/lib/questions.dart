class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  String get correctAnswer => answers[0];
}

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Functions',
      'Components',
      'Blocks',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By using XCode for iOS and Android Studio for Android',
      'By combining components in a visual editor',
      'By defining widgets in config files',
    ],
  ),
  QuizQuestion(
    "What's the purpose of a StatefulWidget?",
    [
      'Update UI as data changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
      'Update data without changing the UI',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateUI()',
      'By calling updateData()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
];