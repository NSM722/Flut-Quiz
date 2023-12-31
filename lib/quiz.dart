import 'package:adv_quiz_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_quiz_app/questions_screen.dart';
import 'package:adv_quiz_app/start_screen.dart';
import 'package:adv_quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// the underscore here means this QuizState class
// is private and only belongs in this file & class for usage
class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // store selected answers
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void selectAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = []; // reset
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: selectAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
