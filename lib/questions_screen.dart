import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return SizedBox(
      width: double.infinity, // occupy the entire width
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: 'Ans',
            onPress: () {},
          ),
          AnswerButton(
            answerText: 'Ans',
            onPress: () {},
          ),
          AnswerButton(
            answerText: 'Ans',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
