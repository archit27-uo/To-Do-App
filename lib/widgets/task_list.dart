import 'package:flutter/material.dart';
// import 'package:to_do/models/task.dart';
import 'package:to_do/widgets/taskTile.dart';
import 'package:to_do/screens/task_screen.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  // late List _tasks;
  // List get tasks => _tasks;
  // set tasks(List tasksValue){
  //   _tasks =
  //   tasksValue;
  // }
  // final List tasks;
  // TasksList(this.tasks);
//   final _TasksListState taskListState = _TasksListState();
//
//   @override
//   State<TasksList> createState() => _TasksListState();
// }
//
// class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(

      builder: (context, taskData, child){
        return Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return TaskTile(
                  taskData.tasks[index].taskTitle,
                  taskData.tasks[index].isDone,
                      (bool? val){

                        taskData.tasks[index].toggleCheckbox();

                  }
              );

            }, itemCount: taskData.tasks.length,)
        );
      }

    );
  }
}
