import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  TextEditingController addtask = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        children: [
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
      ),
    );
  }
}
