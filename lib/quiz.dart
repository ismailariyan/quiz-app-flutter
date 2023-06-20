import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}


class _QuizState extends State<Quiz> {
  // One method of changing Screen
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

  //Another Method
 var activeScreen = 'start-screen';
  
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 0, 103, 151), Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
                  //One method
          // child: activeScreen,
          //Another Method
          child: activeScreen=='start-screen', // this is comparison operator ,
          // here the child is execting a widget type 
        ),
      ),
    );
  }
}
