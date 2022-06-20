import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    print(_questionIndex);
    setState(() {
      _questionIndex = (_questionIndex + 1) % 2;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite animal',
        'answer': ['dog', 'cat', 'elephan', 'lion']
      },
      {
        'questionText': 'What\'s your favourite color',
        'answer': ['red', 'blue', 'pink', 'orange']
      },
      {
        'questionText': 'What\'s your favourite intrucstion',
        'answer': ['Tung', 'Tung', 'Tung', 'Tùng']
      },
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is a appbar'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((e) => Answer(_answerQuestion, e))
                .toList(),
          ],
        ),
      ),
    );
  }
}
