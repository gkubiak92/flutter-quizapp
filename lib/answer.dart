import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final textContent;
  final onPressed;

  Answer(this.textContent, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(textContent),
      onPressed: onPressed,
    );
  }
}
