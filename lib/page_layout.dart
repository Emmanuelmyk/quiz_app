import 'package:flutter/material.dart';
import 'package:quiz_app/first_page.dart';
import 'package:quiz_app/questions_screen.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() {
    return _StartPageState();
  }
}

class _StartPageState extends State<StartPage> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // @override
  // void initState() {
  //   activeScreen = FirstPage(switchScreen);
  //   super.initState();
  // }

  @override
  Widget build(context) {
    Widget screenWidget = FirstPage(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const Questions();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 40, 10, 104),
              Color.fromARGB(255, 99, 41, 222),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          )),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
