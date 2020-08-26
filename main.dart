import 'package:flutter/material.dart';
import './Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    // createState () method returns a state object
    // connected to a stateful widget.
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  // decorator - make code cleaner.
  Widget build(BuildContext context) {
    // home widget is what Flutter brings onto screen when widget is mounted.

    var questions = [
      "Please select your underlying health condition(s).",
      "What is your gender?",
    ];

    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyan[300],
            child: Text(
              "Home",
              textAlign: TextAlign.center,
            ),
            onPressed: _answerQuestion,
          ),
          appBar: AppBar(
            title: Text(
              "Please answer the following questions.",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.greenAccent,
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Question(questions[questionIndex]),
                RaisedButton(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    "Diabetes (Type 1)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _answerQuestion,
                  color: Colors.blue[400],
                  // name of the function, which executes only on pressed.
                ),
                RaisedButton(
                    padding: EdgeInsets.all(14),
                    child: Text("Diabetes (Type 2)",
                        style: TextStyle(color: Colors.white)),
                    onPressed: _answerQuestion,
                    color: Colors.blue[400]),
                RaisedButton(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    "Obesity",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _answerQuestion,
                  color: Colors.blue[400],
                ),
                RaisedButton(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    "Hypertension",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _answerQuestion,
                  color: Colors.blue[400],
                ),
                // can also be onPressed: () => print("x"),
                // or onPressed: () {},
                RaisedButton(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    "Pregnant",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _answerQuestion,
                  color: Colors.blue[400],
                ),
              ],
            ),
          )),
    );
  }
}
