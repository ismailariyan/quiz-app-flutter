import 'package:quiz_app/models/quiz_questions.dart';

//This list is created from the QuizQuestion class
const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What is the capital of JavaScript?',
    [
      'None (JavaScript is a programming language)',
      'London',
      'Paris',
      'Berlin',
    ],
  ),
  QuizQuestion(
    'What does CSS stand for?',
    [
      'Cascading Style Sheets',
      'Central Style System',
      'Creative Styling Solutions',
      'Computer Style Specifications',
    ],
  ),
  QuizQuestion(
    'Which programming language is used to build iOS apps?',
    [
      'Swift',
      'Java',
      'C#',
      'Python',
    ],
  ),
  QuizQuestion(
    'What is the default file extension for Python files?',
    [
      '.py',
      '.js',
      '.html',
      '.cpp',
    ],
  ),
  QuizQuestion(
    'What does MVC stand for in the context of software architecture?',
    [
      'Model-View-Controller',
      'Most Valuable Code',
      'Modern View Configuration',
      'Managed Virtual Components',
    ],
  ),
  QuizQuestion(
    'Which symbol is used to indicate single-line comments in many programming languages?',
    [
      '//',
      '/* */',
      '#',
      '--',
    ],
  ),
];
