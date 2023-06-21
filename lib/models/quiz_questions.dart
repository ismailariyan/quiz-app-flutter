// This is the model class for the questions
// essentially creating  a new type of data structure to store the question
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);// to get the shuffled list we need to make a copy of  the list 1st
    shuffledList.shuffle(); // as shuffle doest return a new list it changes the existing list which we didn't want
    return shuffledList;   // so we made a copy of answers list using List.of(answers) method
  }
}
