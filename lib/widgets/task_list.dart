import 'package:flutter/material.dart';
import 'package:to_do/models/task.dart';
import 'package:to_do/widgets/taskTile.dart';
import 'package:to_do/screens/task_screen.dart';

class TasksList extends StatefulWidget {
  // late List _tasks;
  // List get tasks => _tasks;
  // set tasks(List tasksValue){
  //   _tasks =
  //   tasksValue;
  // }
  List tasks;
  TasksList(this.tasks);
  final _TasksListState taskListState = _TasksListState();

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {







  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index){
        return TaskTile(
          widget.tasks[index].taskTitle,
          widget.tasks[index].isDone!,
                (bool? val){
        setState(() {
          widget.tasks[index].toggleCheckbox();
        });
        }
        );

      }, itemCount: widget.tasks.length,)
    );
  }
}
