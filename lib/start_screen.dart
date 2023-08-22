import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // ensures everything below is centered vertically
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 280),
          const SizedBox(height: 70),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 255, 210, 46)),
          ),
          const SizedBox(height: 28),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
