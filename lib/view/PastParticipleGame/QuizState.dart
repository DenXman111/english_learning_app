import 'package:english_learning_app/view/PastParticipleGame/FormPastParticipleGame.dart';
import 'package:flutter/material.dart';

import 'Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  var correctAnswers;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.correctAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ), //Question
        FormPastParticipleGame(
            () => answerQuestion(), questions[questionIndex]['answers'], correctAnswers, questionIndex)
      ],
    ); //Column
  }
}
