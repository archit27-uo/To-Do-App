import 'package:flutter/material.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class newTask extends StatefulWidget {
  const newTask({Key? key}) : super(key: key);

  @override
  State<newTask> createState() => _newTaskState();
}

class _newTaskState extends State<newTask> {
  Time _time = Time(hour: 24, minute: 0, second: 0);
  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
      print(_time);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                SizedBox(),
                Text(
                  'New Task',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                Container(
                  child: Icon(
                    Icons.close,
                  ),
                )
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Title',
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What are you planning?',
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: (){
                  Navigator.of(context).push(
                    showPicker(

                      context: context,
                      value: _time,
                      iosStylePicker: true,
                      sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                      sunset: TimeOfDay(hour: 18, minute: 0), // optional
                      duskSpanInMinutes: 120, // optional
                      onChange: onTimeChanged,
                    ),
                  );
                },
                child: Text('Select Time')
            ),
            Container(
              margin: EdgeInsetsDirectional.only(end: 0),
              child: Container(

                height: 50,
                color: Colors.redAccent,
                child: Center(
                  child: Text(
                    'Create',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
