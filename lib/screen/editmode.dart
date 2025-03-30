import 'package:calander/components/dhcalender.dart';
import 'package:flutter/material.dart';

class Editmode extends StatefulWidget {
  const Editmode({super.key});

  @override
  State<Editmode> createState() => _EditmodeState();
}

class _EditmodeState extends State<Editmode> {
  List<String> tasks = [];
  TextEditingController addtask = TextEditingController();

  List<String> days = ["sun", "mon", "tue", "wed", "thus", "fri", "sat"];

  void addTask() {
    if (addtask.text.isNotEmpty) {
      setState(() {
        tasks.add(addtask.text);
        addtask.clear();
      });
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please enter a task')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dhcalender(days: days)),
              );
            },
            child: Text('Calendar'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(tasks[index]), dense: true);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: addtask,
                    decoration: InputDecoration(
                      hintText: "Enter a task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: addTask,
                  icon: Icon(Icons.add, color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
