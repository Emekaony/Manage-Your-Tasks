// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:todo_app/add_todo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Hello"),
          )),
        ),
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: InkWell(
                enableFeedback: false,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.green[100],
                      context: context,
                      // so when I see builder, I should know that the current context should be in parenthesis
                      builder: (context) {
                        return Container(
                          padding: EdgeInsets.all(20),
                          height: 250,
                          child: AddTodo(),
                        );
                      });
                },
                child: Icon(
                  Icons.add,
                  color: Colors.red,
                ),
              ),
            ),
          ],
          title: const Text("Task Manager"),
          centerTitle: true,
        ),
        body: Container());
  }
}
