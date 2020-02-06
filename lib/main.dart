import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/todo_list_screen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,

        theme: ThemeData(
          primaryColor: Colors.red.shade900,
          accentColor: Colors.red.shade900,
        ),
        title: 'Todo List',
        home: TodoListScreen());
  }
}
