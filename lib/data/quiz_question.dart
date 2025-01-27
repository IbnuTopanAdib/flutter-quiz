class QuizQuestion {
  final String question;
  final List<String> answers;

  const QuizQuestion({required this.question, required this.answers});

  List<String> getShuffledAnswers() {
    final copyAnswers = List.of(answers);
    copyAnswers.shuffle();
    return copyAnswers;
  }
}
