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
          // style: GoogleFonts.splash(
          style: GoogleFonts.lato(
            color: const Color.fromARGB(163, 255, 255, 255),
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            backgroundColor: const Color.fromARGB(255, 249, 133, 133),
            foregroundColor: const Color.fromARGB(138, 0, 0, 0),
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt_outlined),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
