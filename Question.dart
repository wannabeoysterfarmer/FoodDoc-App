import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

// can take some data to initialize the data inside of this class
// takes data from questions in main.dart and puts them into
// questionText, then Question(this.questionText) initializes
// the data in this question.dart widget, so that it becomes
// questionText and returns it.

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(questionText,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 20,
                fontWeight: FontWeight.w400)));
  }
}

// test update
