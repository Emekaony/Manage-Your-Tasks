// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

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
                onTap: () {
                  print("Plus button is tappes");
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
        body: Container(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: const Text("Task Manager"),
        ));
  }
}
