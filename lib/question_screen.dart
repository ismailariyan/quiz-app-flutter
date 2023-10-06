import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

// we passing the list of user_answer to the quiz class where we have list selectedanswer
// which is storing all the answer..
class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    //this widget is from the State class which give you acces to the widget class
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    // this another approach for centering the elements
    return SizedBox(
      width: double.infinity, // use as much width as you want

      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // this is the Y axis
          crossAxisAlignment: CrossAxisAlignment.stretch, // this is the X axis
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              // here the spread operator is used to pull out the widgets from this list into th main list as the
              //children accpets list of widgets i cant accpet list within a list
              // [Text,sizedBox,[AnswerButton widgets,AnswerButton widgets],Other things] <<== this is not ACCEPTED
              // using the Spread oparator we convert this into
              // [Text,sizedBox,AnswerButton widgets,AnswerButton widgets,Other things] <<== this ACCEPTED
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
