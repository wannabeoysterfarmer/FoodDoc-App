import 'package:MVP/Screens/Home/Components/body.dart';
import 'package:MVP/Survey/answer.dart';
import 'package:flutter/material.dart';
import 'package:MVP/Survey/Question.dart';
import 'package:flutter/semantics.dart';
import 'Survey/answer.dart';
import 'Survey/Quiz.dart';
import 'package:MVP/constants.dart';
import 'package:MVP/Screens/Home/Home-Screen.dart';

void main() {
  runApp(MyApp());
}

void openMyPage() {
  BuildContext context;
  Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
}

class MyApp extends StatelessWidget {
/*StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    // createState () method returns a state object
    // connected to a stateful widget.
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'text': 'Welcome! What would you like to do?',
      'answer': [
        "Scan QR Code",
        "Sign Up",
      ],
    },
  ];

  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  */

  @override
  // decorator - make code cleaner.
  Widget build(BuildContext context) {
    // home widget is what Flutter brings onto screen when widget is mounted.

    return new MaterialApp(home: new Main2());
  }
}

class Main2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(60),
              ),
              Text(
                "Pod",
                style: TextStyle(
                    fontFamily: "Righteous", fontSize: 30, color: Colors.green),
              ),
              Container(
                margin: EdgeInsets.all(4),
              ),
              Text("contactless technology made for you",
                  style: TextStyle(fontSize: 15)),
              Container(
                margin: EdgeInsets.all(10),
              ),
              Image.asset("Assets/Images/sizzle.png"),
              Container(
                margin: EdgeInsets.all(60),
              ),
              Container(
                  child: Column(
                children: [
                  RaisedButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue[300],
                      onPressed: () {}),
                  RaisedButton(
                      child: Text("Scan QR Code",
                          style: TextStyle(color: Colors.white)),
                      color: Colors.blue[300],
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }),
                ],
              )),
            ],
          ),
        ) // make a new .dart file for main page of the app.

        );
  }
}
// final - value wont change once it is given the value.
// const - wont change at all, set, not need to be given by something. already
// given.
// var - can change
