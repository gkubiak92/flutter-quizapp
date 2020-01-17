import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final restart;

  Result(this.totalScore, this.restart);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "Thank you!\n Your score is: ${this.totalScore}",
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart quiz'),
            onPressed: this.restart,
          )
        ],
      ),
    );
  }
}
