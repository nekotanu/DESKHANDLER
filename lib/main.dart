import 'package:calander/screen/dashboard.dart';
// import 'package:calander/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//data
List<String> days = ["sun", "mon", "tue", "wed", "thus", "fri", "sat"];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(days: days),
    );
  }
}
