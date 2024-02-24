import 'package:flutter/material.dart';

const logo = 'asset/images/quiz-logo.png';

class FirstPage extends StatelessWidget {
  const FirstPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          logo,
          width: 300,
          color: const Color.fromARGB(120, 255, 255, 255),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(
            color: Color.fromARGB(255, 205, 188, 243),
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(57, 52, 28, 114),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
