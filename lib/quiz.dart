import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start_screen';
  List<String> selectedAnswers = [];

  void changeScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  void restartScreen() {
    setState(() {
      activeScreen = 'start_screen';
    });
    selectedAnswers = [];
  }

  void answerQuestion(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, Widget> screens = {
      'start_screen': StartScreen(changeScreen),
      'question_screen': QuestionScreen(onSelectAnswer: answerQuestion),
      'result-screen': ResultScreen(
        selectedAnswers: selectedAnswers,
        onRestart: restartScreen,
      ),
    };

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: screens[activeScreen] ?? StartScreen(changeScreen),
    );
  }
}
