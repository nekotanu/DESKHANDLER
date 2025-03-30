import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({super.key, required this.count});

  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(),
      ),
      child: Padding(padding: EdgeInsets.all(2), child: Text(count)),
    );
  }
}
