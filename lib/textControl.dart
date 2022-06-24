import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onChangeText;
  const Button({Key? key, required this.onChangeText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          ElevatedButton(onPressed: onChangeText, child: Text('Change qoute')),
    );
  }
}
