import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String textAnswer;
  Answer(this.selectHandler, this.textAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text(textAnswer),
        color: Colors.blue,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
