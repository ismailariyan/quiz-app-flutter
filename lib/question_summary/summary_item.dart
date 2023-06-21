import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        // y axis padding set kortesi
        vertical: 7,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment
            .start, // eita diye Row er sob element left align kortesi
        children: [
          QuestionIdentifier(
            // passing the values to gol index banai widget class
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20), // gap for the question text
          Expanded(
            // amra expanded use to this is like the 'wrap around' option in excel
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // eita diye Column er sob element left align kortesi
              children: [
                Text(
                  itemData['question'] as String, // question text and oita upor style kori
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 11, 229, 80),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
