import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // const StyledText({key}) : super(key: key);
  // const StyledText(String text, {super.key}): text1 = text;
  const StyledText(this.text1, {super.key});

  final String text1;

  @override
  Widget build(context) {
    return Text(
      text1,
      style: const TextStyle(fontNSize: 28, color: Colors.white),
    );
  }
}
