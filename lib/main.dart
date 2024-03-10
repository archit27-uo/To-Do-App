import 'package:flutter/material.dart';
import 'package:to_do/models/task_list_provider.dart';
import 'package:to_do/models/task_provider.dart';
import 'screens/task_screen.dart';
import 'screens/newTask_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskListProvider(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
      
          '/': (context) => TaskScreen(),
          '/second': (context) => newTask(),
        },
      ),
    );
  }
}

