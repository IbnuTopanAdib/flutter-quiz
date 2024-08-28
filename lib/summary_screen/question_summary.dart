import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/summary_screen/question_identifier.dart';

class QuestionSummary extends StatelessWidget {
  final Map<String, dynamic> summaryData;
  const QuestionSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        summaryData['selectedAnswer'] == summaryData['correctAnswer'];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              questionIndex: summaryData['index'],
              isCorrectAnswer: isCorrectAnswer),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question: ${summaryData['question']}',
                  style:
                      GoogleFonts.alegreya(fontSize: 16, color: Colors.white),
                ),
                Text(
                  'Your answer: ${summaryData['selectedAnswer']}',
                  style:
                      GoogleFonts.alegreya(fontSize: 14, color: Colors.black),
                ),
                Text(
                  'Correct answer: ${summaryData['correctAnswer']}',
                  style: GoogleFonts.alegreya(
                      fontSize: 14, color: Colors.greenAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
