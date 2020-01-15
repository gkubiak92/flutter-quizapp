import 'package:flutter/material.dart';

import 'question.dart';
import 'answer_button.dart';

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
  var _questionList = [
    'What is your favourite color?',
    'What is your favourite animal?',
    'What is your favourie car?'
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Question answered');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
          backgroundColor: Color.fromARGB(100, 42, 169, 10),
          leading: Icon(Icons.shop),
        ),
        body: Column(
          children: <Widget>[
            Question('${_questionList[_questionIndex]}'),
            AnswerButton('Answer1', _answerQuestion),
            AnswerButton('Answer2', _answerQuestion),
            AnswerButton('Answer3', _answerQuestion),
          ],
        ),
      ),
    );
  }
}
