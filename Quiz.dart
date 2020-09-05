import "package:flutter/material.dart";
import './Question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['text']),
          // function with the [] specifiying the keyword.
          // so the questions is a list and by using [qindex],
          // you first get the specified item in the list and
          // then, using the key ['text'], get the exact value
          // for what you are looking for in that item in list.
          ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
            // all the (questions...[answer']) turn into 'answer' and are then
            // fed into the function as 'answer', then as answerQustion2 in answer.dart
            // and then back.
            return Answer(answerQuestion, answer);
          }).toList(),
        ],
      ),
    );
  }
}
