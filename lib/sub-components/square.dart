import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({super.key, required this.count});

  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(12),
        border: Border.all(),
      ),
      child: SizedBox(height: 200, width: 200, child: Text(count)),
    );
  }
}
