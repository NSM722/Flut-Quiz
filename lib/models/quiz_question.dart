class QuizQuestion {
  const QuizQuestion(this.text, this.answers); // constructor function

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    // List.of() creates a copy of the origin list
    final shuffledList = List.of(answers);
    shuffledList
        .shuffle(); // shuffle mutates the original list in memory but doesn't return anything
    return shuffledList;
  }
}
