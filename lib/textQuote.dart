import 'package:flutter/material.dart';
import 'package:quoter/quoter.dart';

class TextQuote extends StatelessWidget {
  final Quote? quoterText;

  const TextQuote({Key? key, this.quoterText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          quoterText?.quotation ?? 'Tap the button to generate random quote.',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.red),
        ),
        Text(
          quoterText?.quotee ?? 'Người dẫn',
        ),
      ],
    );
  }
}
