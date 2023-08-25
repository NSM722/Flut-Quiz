import 'package:flutter/material.dart';
import 'package:adv_quiz_app/questions_screen.dart';
import 'package:adv_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen(
      switchScreen); // storing the widget in a variable of type widget

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 189, 78, 209),
                  Color.fromARGB(255, 161, 20, 77),
                ]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
