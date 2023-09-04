import 'package:flutter/material.dart';
import 'package:adv_quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question:': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('results screen...'),
              const SizedBox(
                height: 30,
              ),
              const Text('list of answers and questions'),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Restart quiz',
                  )),
            ]),
      ),
    );
  }
}
