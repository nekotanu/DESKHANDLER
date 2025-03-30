import 'package:calander/sub-components/dhtab.dart';
import 'package:calander/sub-components/square.dart';
import 'package:flutter/material.dart';

class Dhcalender extends StatefulWidget {
  const Dhcalender({super.key, required this.days});

  final List<String> days;

  @override
  State<Dhcalender> createState() => _DhcalenderState();
}

class _DhcalenderState extends State<Dhcalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 800,
        width: 600,
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 4.1,
              ),
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, index) => Dhtab(text: widget.days[index]),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7 * 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 1.1,
              ),
              shrinkWrap: true,
              itemBuilder:
                  (context, index) =>
                      Center(child: Square(count: index.toString())),
            ),
          ],
        ),
      ),
    );
  }
}
