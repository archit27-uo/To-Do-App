import 'package:flutter/material.dart';
import 'package:to_do/models/task_list_provider.dart';
import 'package:to_do/models/task_provider.dart';
// import 'package:to_do/models/task_provider.dart';
import 'package:to_do/widgets/taskTile.dart';
import 'package:to_do/screens/task_screen.dart';
import 'package:provider/provider.dart';


class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  // late List _tasks;
  @override
  Widget build(BuildContext context) {
    //final providerTask = Provider.of<TaskProvider>(context);
    final providerTaskList = Provider.of<TaskListProvider>(context);
    return Consumer<TaskListProvider>(

      builder: (context, taskData, child){

            return Expanded(
              child: ListView.builder(itemBuilder: (context, index){
                return GestureDetector(
                  onLongPress: (){
                    providerTaskList.deleteElement(index);
                  },
                  child: TaskTile(
                    taskData.tasks[index].taskTitle,
                          taskData.tasks[index].isDone,
                      (bool)=>taskData.toggleCheckbox(index),
                    index,
                  ),
                );

              }, itemCount: taskData.tasks.length,),
            );

      }

    );
  }
}
