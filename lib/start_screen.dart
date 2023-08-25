import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,
      {super.key}); // added as a positional argument void this.startQuiz

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // ensures everything below is centered vertically
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
            color: const Color.fromARGB(
                150, 248, 247, 247), // reduces the image opacity
          ),
          const SizedBox(height: 70),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 255, 210, 46)),
          ),
          const SizedBox(height: 28),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            }, // OR onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(150, 255, 255, 255)),
            icon: const Icon(Icons.start), // added an icon
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
