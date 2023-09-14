import 'package:flutter/material.dart';
import 'package:to_do/models/task.dart';
import 'package:to_do/widgets/taskTile.dart';

class TasksList extends StatefulWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskTitle: 'Buy Chocolate'),
    Task(taskTitle: 'Study 1 hour Flutter'),
    Task(taskTitle: 'Exercise'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index){
        return TaskTile(
          tasks[index].taskTitle,
          tasks[index].isDone!,
                (bool? val){
        setState(() {
          tasks[index].toggleCheckbox();
        });
        }
        );

      }, itemCount: tasks.length,)
    );
  }
}
