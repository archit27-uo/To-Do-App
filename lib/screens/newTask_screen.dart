import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:to_do/models/task.dart';
import 'package:to_do/widgets/task_list.dart';
import 'task_screen.dart';


// Time _time = Time(hour: 24, minute: 0, second: 0);
// void onTimeChanged(Time newTime) {
//   setState(() {
//     _time = newTime;
//     print(_time);
//   });
// }

class newTask extends StatefulWidget {
  @override
  State<newTask> createState() => _newTaskState();
}

class _newTaskState extends State<newTask> {
  // late final Function update;
  late String todoAdded;

  late bool listened;

  void updateTodoAdded(String s){
    todoAdded = s;
  }

  String getTodoAdded(){
    return todoAdded;
  }

  // Time _time = Time(hour: 24, minute: 0, second: 0);
  @override
  Widget build(BuildContext context) {
    // void callProvider(){
    //   Provider.of<Data>(context).addData(todoAdded);
    // }
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft:Radius.circular(40),
              topRight: Radius.circular(40)
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              Text(

                'New Task',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.close,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Title',
              ),
              onSubmitted: (value){
                updateTodoAdded(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What are you planning?',
              ),

            ),
          ),
          // TextButton(
          //     onPressed: (){
          //       Navigator.of(context).push(
          //         showPicker(
          //           context: context,
          //           value: _time,
          //           iosStylePicker: true,
          //           sunrise: TimeOfDay(hour: 6, minute: 0), // optional
          //           sunset: TimeOfDay(hour: 18, minute: 0), // optional
          //           duskSpanInMinutes: 120, // optional
          //           onChange: onTimeChanged,
          //         ),
          //       );
          //     },
          //     child: Text('Select Time')
          // ),
          GestureDetector(
            onTap: (){
              Provider.of<Data>(context,listen: false).addData(getTodoAdded());
            },
            child: Container(
              height: 50,
              color: Color(0xFF111518),
              child: Center(
                child: Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsetsDirectional.only(end: 0),
          //   child: GestureDetector(
          //     onTap: (){
          //
          //       Provider.of<Data>(context, listen: false).addData(todoAdded);
          //       Navigator.pop(context);
          //     },
          //

          //   ),
          // )
        ],
      ),
    );
  }
}
