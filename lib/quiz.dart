import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // 1st method of changing Screen
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen =  StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });

  // }

  //2nd Method
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       body: Container(
  //         decoration: const BoxDecoration(
  //             gradient: LinearGradient(
  //                 colors: [Color.fromARGB(255, 0, 103, 151), Colors.blue],
  //                 begin: Alignment.topLeft,
  //                 end: Alignment.bottomRight)),
  //         //1st method
  //         // child: activeScreen,
  //         //2nd Method
  //         child: activeScreen == 'start-screen'
  //             ? StartScreen(switchScreen)
  //             : const QuestionsScreen(), // this is comparison operator ,
  //         // here the child is execting a widget type
  //       ),
  //     ),
  //   );
  // }
  //3rd method

  @override
  Widget build(BuildContext context) {
    // initially the acitvescreen is set to start-screen
    // but when the Start Quiz is preed the changes to question-screen and when all the questions ran out
    // it goes to the result screen 
    Widget screenWidget = StartScreen(switchScreen);
/*  eikhane amr 3ta screen e ase and 3tai bolte gele quiz er child screen so quiz screen sobar upore ase
>>StartScreen
>>QuestionsScreen
>>ResultsScreen

*/
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        choosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
      );
    }



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 0, 103, 151), Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: screenWidget,
          // here the child is execting a widget type
        ),
      ),
    );
  }
}
