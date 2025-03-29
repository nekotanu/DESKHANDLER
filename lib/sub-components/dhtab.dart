import 'package:flutter/material.dart';

class Dhtab extends StatelessWidget {
  const Dhtab({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 10,
      decoration: BoxDecoration(border: Border.all()),
      child: Text(text),
    );
  }
}
