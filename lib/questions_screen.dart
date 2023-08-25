import 'package:adv_quiz_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState(); // return the state instant
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0]; // fetching  the first question

    return SizedBox(
      width: double.infinity, // occupy the entire width
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // spread the List
            ...currentQuestion.getShuffledAnswers().map((answer) {
              // map doesn't mutate the original list
              return AnswerButton(
                answerText: answer,
                onPress: () {},
              );
            }),
          ],
        ),
      ),
    );
  }
}
