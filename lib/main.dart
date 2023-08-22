import 'package:flutter/material.dart'; // main import
import 'package:adv_quiz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
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
        child: const StartScreen(),
      ),
    ),
  ));
}


// Image.asset('assets/images/quiz-logo.png')
