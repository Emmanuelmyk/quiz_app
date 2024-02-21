import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_btn.dart';
import 'package:quiz_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {

  var currentQuestionIndex = 0;

    void answerQuestion(){
      setState(() {
        currentQuestionIndex++;
      });
     
    }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 184, 189, 243),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswes().map(
            (item) {
              return AnswerBtn(item, answerQuestion);
            },
          ),
        ],
      ),
    );
  }
}