import 'package:flutter/material.dart';

class Dhcalender extends StatefulWidget {
  const Dhcalender({super.key});

  @override
  State<Dhcalender> createState() => _DhcalenderState();
}

class _DhcalenderState extends State<Dhcalender> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        itemCount: 7 * 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
        ),
        itemBuilder: (context, index) => Center(child: Text(index.toString())),
      ),
    );
  }
}
