import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 11, 11, 76),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      ),
      child: Text(
        answerText, textAlign: TextAlign.center,
      ),
    );
  }
}
