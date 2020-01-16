import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Thank you!\n Your score is: ${this.totalScore}",
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
