import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const logo = 'assets/images/quiz-logo.png';

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
          width: 250,
          color: const Color.fromARGB(120, 255, 255, 255),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Learn Flutter the fun way',
          style: GoogleFonts.splash(
            color: const Color.fromARGB(255, 205, 188, 243),
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(57, 52, 28, 114),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: const TextStyle(
              fontSize: 15,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
