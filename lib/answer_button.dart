import 'package:flutter/material.dart';

// we  have created an AnswerButton widget which made the options button for the quiz app
// this should have been neamed the optionbutton
class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;

  // Here we used the ElevatedButton
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          onTap, // we are passing the function as a value ,so it wont be executed everytime th button is created rather when the onPressed is triggered
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 4, 133, 239),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
