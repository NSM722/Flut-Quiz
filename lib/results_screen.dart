import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
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
