import 'package:flutter/material.dart';
import 'package:to_do/screens/newTask_screen.dart';
import 'package:to_do/widgets/taskTile.dart';
import 'package:to_do/widgets/task_list.dart';
import 'package:to_do/models/task.dart';

class TaskScreen extends StatefulWidget {
  static List<Task> tasks = [
    Task(taskTitle: 'Buy Chocolate'),
    Task(taskTitle: 'Study 1 hour Flutter'),
    Task(taskTitle: 'Exercise'),
  ];


  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Icon(
                  Icons.arrow_back_rounded,
                color: Colors.blueGrey,
                size: 25,

              ),

              SizedBox(
                height: 20,
              ),
              Text(
                'Title',
                style: TextStyle(
                  color: Color(0xFF364F6B),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30,),
              TasksList(TaskScreen.tasks),

              Container(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: FloatingActionButton(
                      onPressed: (){
                          showModalBottomSheet(context: context, builder: (context)=> newTask(update:(val){
              setState(() {
              TaskScreen.tasks.add(Task(taskTitle: val));
    });
    })
                          );
                      },

                    backgroundColor: Color(0xFFFC5185),
                    child: Icon(
                        Icons.add,
                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
