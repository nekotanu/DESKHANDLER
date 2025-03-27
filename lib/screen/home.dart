import 'package:calander/components/dhcalender.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextEditingController addtask = TextEditingController();
    Future<dynamic> addTask() {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Add task'),
          content: TextField(
            controller: addtask,
          ),
        ),
      );
    }

    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dhcalender(),
                  ));
            },
            child: Text('calender')),
        BottomAppBar(
          child: IconButton(
              onPressed: () {
                TextField(
                  controller: addtask,
                );
              },
              icon: Icon(Icons.add)),
        )
      ],
    ));
  }
}
