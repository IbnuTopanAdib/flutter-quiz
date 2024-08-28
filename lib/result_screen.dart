import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/summary_screen/quiz_summary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final void Function() onRestart;
  const ResultScreen(
      {super.key, required this.selectedAnswers, required this.onRestart});

  List<Map<String, dynamic>> getSummary() {
    List<Map<String, dynamic>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'index': i + 1,
        'question': questions[i].question,
        'selectedAnswer': selectedAnswers[i],
        'correctAnswer': questions[i].answers[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummary();
    final numTotalQuestions = questions.length;

    final numCorrectAnswers = summary.where((data) {
      return data['selectedAnswer'] == data['correctAnswer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'You answered ',
                  style: GoogleFonts.alegreya(
                      fontSize: 28,
                      color: Colors.white), 
                  children: <TextSpan>[
                    TextSpan(
                      text: '$numCorrectAnswers', 
                      style: GoogleFonts.alegreya(
                        fontSize: 28,
                        fontWeight: FontWeight.bold, 
                        color: Colors.green, 
                      ),
                    ),
                    TextSpan(
                      text: ' out of ',
                      style: GoogleFonts.alegreya(
                          fontSize: 28, color: Colors.white),
                    ),
                    TextSpan(
                      text: '$numTotalQuestions', 
                      style: GoogleFonts.alegreya(
                        fontSize: 28,
                        fontWeight: FontWeight.bold, 
                        color: Colors.black, 
                      ),
                    ),
                    TextSpan(
                      text: ' question correctly.',
                      style: GoogleFonts.alegreya(
                          fontSize: 28, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              QuizSummary(quizSummary: getSummary()),
              const SizedBox(
                height: 35,
              ),
              TextButton.icon(
                onPressed: onRestart,
                label: const Text('Restart Quiz'),
                style: const ButtonStyle(
                    foregroundColor: WidgetStatePropertyAll(Colors.white)),
                icon: const Icon(
                  Icons.restart_alt,
                ),
              )
            ],
          )),
    );
  }
}
