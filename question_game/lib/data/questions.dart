import 'package:question_game/models/quiz_questions.dart';

final questions = [
  QuizQuestions(
    'What are the main building blocks of Flutter UIs?',
    ['Widgets', 'Classes', 'Functions', 'Objects'],
    'Widgets',
  ),
  QuizQuestions(
      'How are Flutter UIs built?',
      [
        'By combining widgets in code',
        'By combining widgets in a visual editor',
        'By defining widgets in config files',
        'By using XCode for iOS and Android Studio for Android'
      ],
      'By combining widgets in code'),
  QuizQuestions(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
    'Update UI as data changes',
  ),
  QuizQuestions(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
    'Both are equally good',
  ),
  QuizQuestions(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
    'The UI is not updated',
  ),
  QuizQuestions(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
    'By calling setState()',
  ),
];
