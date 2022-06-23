import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback onReset;
  Result({required this.score, required this.onReset});
  String get resultPhase {
    String resultText = '';
    if (score <= 8) {
      resultText = 'You are awesome and innocent! $score';
    } else if (score <= 12) {
      resultText = 'Pretty likeable! $score';
    } else if (score <= 16) {
      resultText = 'You are ... strange?! $score';
    } else {
      resultText = 'You are so bad! $score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: onReset,
          ),
        ],
      ),
    );
  }
}
