import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      color: Color.fromARGB(255, 252, 160, 0),
      padding: EdgeInsets.all(10),
    );
  }
}
