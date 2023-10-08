import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'screens/newTask_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (_) =>Data(),

      child: MaterialApp(
        initialRoute: '/',
        routes: {

          '/': (context) => TaskScreen(),
          // '/second': (context) => newTask(),
        },
      ),
    );
  }
}

