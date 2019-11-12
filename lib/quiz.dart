import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int qIndex;

  Quiz({this.qIndex, this.answerQuestions, this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qIndex]['questionText'],
        ),
        ...(questions[qIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
