import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final textContent;
  final onPressed;

  AnswerButton(this.textContent, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(textContent),
      onPressed: onPressed,
    );
  }
}
