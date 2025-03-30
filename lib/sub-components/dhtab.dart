import 'package:flutter/material.dart';

class Dhtab extends StatelessWidget {
  const Dhtab({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }
}
