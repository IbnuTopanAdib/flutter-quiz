import 'package:quiz_app/data/quiz_question.dart';

const questions = [
  QuizQuestion(
    question: 'What are the main building blocks of Flutter UIs?',
    answers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    question: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    question:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    question: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    question: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  // New questions added below
  QuizQuestion(
    question: 'What keyword is used to declare a variable in Dart?',
    answers: [
      'var',
      'let',
      'const',
      'int',
    ],
  ),
  QuizQuestion(
    question: 'Which of the following is a type of Flutter widget?',
    answers: [
      'Container',
      'Button',
      'InputField',
      'FormField',
    ],
  ),
  QuizQuestion(
    question: 'What is the default alignment of a Column widget in Flutter?',
    answers: [
      'Center',
      'Left',
      'Top',
      'Bottom',
    ],
  ),
  QuizQuestion(
    question: 'Which of these is a valid data type in Dart?',
    answers: [
      'String',
      'number',
      'char',
      'array',
    ],
  ),
  QuizQuestion(
    question: 'What is Dart?',
    answers: [
      'A programming language used to build Flutter apps',
      'A programming language used to build Android apps',
      'A framework for building Flutter apps',
      'A tool for compiling Flutter apps',
    ],
  ),
  QuizQuestion(
    question: 'Which widget can be used to display a list of items in Flutter?',
    answers: [
      'ListView',
      'Row',
      'Stack',
      'Container',
    ],
  ),
  QuizQuestion(
    question: 'Which method is used to start the execution of a Flutter app?',
    answers: [
      'runApp()',
      'startApp()',
      'launchApp()',
      'initApp()',
    ],
  ),
  QuizQuestion(
    question: 'What does the "const" keyword in Dart signify?',
    answers: [
      'A compile-time constant',
      'A runtime constant',
      'A mutable variable',
      'A static variable',
    ],
  ),
  QuizQuestion(
    question: 'Which method is used to navigate to a new screen in Flutter?',
    answers: [
      'Navigator.push()',
      'Router.navigate()',
      'Screen.show()',
      'Navigator.goto()',
    ],
  ),
];
