import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion2;
  final String answerText;
  Answer(this.answerQuestion2, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        padding: EdgeInsets.all(14),
        textTheme: ButtonTextTheme.primary,
        color: Colors.blue[400],
        onPressed: answerQuestion2,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
