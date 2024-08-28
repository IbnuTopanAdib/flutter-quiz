import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const QuestionScreen({super.key, required this.onSelectAnswer});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questions[currentQuestionIndex].question,
                style: GoogleFonts.alegreya(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              ...questions[currentQuestionIndex]
                  .getShuffledAnswers()
                  .map((answer) {
                return AnswerButton(
                    answer: answer,
                    onPressed: () {
                      answerQuestion(answer);
                    });
              })
            ],
          ),
        ),
      ),
    );
  }
}
