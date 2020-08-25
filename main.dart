import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
    // createState () method returns a state object
    // connected to a stateful widget.
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  // decorator - make code cleaner.
  Widget build(BuildContext context) {
    // home widget is what Flutter brings onto screen when widget is mounted.

    var questions = [
      "Please select your underlying health conditions.",
      "What is your gender?",
    ];

    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Text(
              "Hello World",
              textAlign: TextAlign.center,
            ),
            onPressed: answerQuestion,
          ),
          appBar: AppBar(
            title: Text("Please answer the following questions."),
            backgroundColor: Colors.greenAccent,
          ),
          body: Center(
            child: Column(
              children: [
                Text(questions[questionIndex]),
                RaisedButton(
                  child: Text(
                    "Diabetes (Type 1)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: answerQuestion,
                  color: Colors.blueGrey,
                  // name of the function, which executes only on pressed.
                ),
                RaisedButton(
                    child: Text("Diabetes (Type 2)",
                        style: TextStyle(color: Colors.white)),
                    onPressed: answerQuestion,
                    color: Colors.blueGrey),
                RaisedButton(
                  child: Text(
                    "Obesity",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: answerQuestion,
                  color: Colors.blueGrey,
                  // can also be onPressed: () => print("x"),
                  // or onPressed: () {},
                )
              ],
            ),
          )),
    );
  }
}
