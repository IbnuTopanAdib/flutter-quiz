import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;
  const QuestionIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isCorrectAnswer == true ? Colors.white : Colors.pink,
        ),
        child: Center(
            child: Text(
          '$questionIndex',
          style:
              GoogleFonts.sacramento(fontSize: 12, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
