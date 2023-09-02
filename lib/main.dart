import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'screens/newTask_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => TaskScreen(),
        '/second': (context) => const newTask(),
      },
    );
  }
}

