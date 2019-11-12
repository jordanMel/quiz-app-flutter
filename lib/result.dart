import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'you are bad' + resultScore.toString();
    } else if (resultScore <= 20) {
      resultText = 'you are good Score: ' + resultScore.toString();
    } else {
      resultText = 'you are awesome Score: ' + resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
