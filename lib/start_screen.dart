import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/images/quiz-logo.png',
              height: 300,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn FLutter in the fun way',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              'Start quiz!',
            ),
            icon: const Icon(Icons.forward),
          ),
        ],
      ),
    );
  }
}
