import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/textControl.dart';
import 'package:flutter_complete_guide/textQuote.dart';
import 'package:quoter/quoter.dart';

void main() => runApp(Assignment());

class Assignment extends StatefulWidget {
  final Quoter quoterText;
  const Assignment({
    Key? key,
    this.quoterText = const Quoter(),
  }) : super(key: key);

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  Quote? _fixText;

  void _onChangeText() {
    setState(() {
      _fixText = widget.quoterText.getRandomQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment session1',
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Đây là appbar'),
            ),
            body: Column(
              children: [
                TextQuote(quoterText: _fixText),
                Button(
                  onChangeText: _onChangeText,
                )
              ],
            )));
  }
}
