import 'package:flutter/material.dart';

import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 3}
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 6},
        {'text': 'Fish', 'score': 3}
      ]
    },
    {
      'questionText': 'what\'s your favorite meal?',
      'answers': [
        {'text': 'Breakfast', 'score': 10},
        {'text': 'Lunch', 'score': 6},
        {'text': 'Dinner', 'score': 3}
      ]
    },
  ];

  var _qIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_totalScore <= 10) {}

    setState(() {
      _qIndex++;
    });

    if (_qIndex < _questions.length) {
    } else {
      print('you did it');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                qIndex: _qIndex,
                answerQuestions: _answerQuestion,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
