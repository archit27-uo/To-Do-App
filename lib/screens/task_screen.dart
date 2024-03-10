import 'package:flutter/material.dart';
import 'package:to_do/screens/newTask_screen.dart';
import 'package:to_do/widgets/taskTile.dart';
import 'package:to_do/widgets/task_list.dart';
import 'package:to_do/models/task_provider.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

// class Data extends ChangeNotifier {
//
//   //  void updated(){
//   //    notifyListeners();
//   //  }
//   // void addData(String newVal){
//   //   tasks.add(Task(taskTitle: newVal));
//   //
//   //   notifyListeners();
//   // }
// }
class _TaskScreenState extends State<TaskScreen> {


  @override
  Widget build(BuildContext context) {
    //final providerTask = Provider.of<TaskProvider>(context);
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
                  color: Color(0xC3EEF2F3),
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30,),
              TasksList(),

              Container(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: FloatingActionButton(
                      onPressed: (){

                          showModalBottomSheet(


                              context: context,
                              builder: (context)=> newTask()// newTask(update:(val){
    //           setState(() {
    //           TaskScreen.tasks.add(Task(taskTitle: val));
    // });
    // }),


                          );
                      },

                    backgroundColor: Color(0xFF111518),
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
