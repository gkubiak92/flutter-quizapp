import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'question': 'What is your favourite color?',
      'answers': [
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'blue', 'score': 2},
      ],
    },
    {
      'question': 'What is your favourite animal?',
      'answers': [
        {'text': 'cat', 'score': 2},
        {'text': 'dog', 'score': 5},
        {'text': 'rabbit', 'score': 3},
      ],
    },
    {
      'question': 'What is your favourite car?',
      'answers': [
        {'text': 'clio', 'score': 1},
        {'text': 'ferrari', 'score': 3},
        {'text': 'lamborghini', 'score': 5},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });

    print('Question answered');
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var body = _questionIndex < _questions.length
        ? Quiz(_questions, _questionIndex, _answerQuestion)
        : Result(_totalScore);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
          backgroundColor: Colors.blueGrey,
          leading: Icon(Icons.shop),
        ),
        body: body,
      ),
    );
  }
}
