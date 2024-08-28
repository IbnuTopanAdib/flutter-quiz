import 'package:flutter/material.dart';
import 'package:quiz_app/summary_screen/question_summary.dart';

class QuizSummary extends StatelessWidget {
  final List<Map<String, dynamic>> quizSummary;

  const QuizSummary({super.key, required this.quizSummary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: SingleChildScrollView(
        child: Column(
          children: quizSummary.map((data) {
            return QuestionSummary(
              summaryData: data,
            );
          }).toList(),
        ),
      ),
    );
  }
}
