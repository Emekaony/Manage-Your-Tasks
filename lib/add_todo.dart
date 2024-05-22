// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  // this is how u handle text in a text field.
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Add Todo"),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            hintText: "Add some items...",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              print(todoText.text);
            },
            child: Text("Add"))
      ],
    );
  }
}
