import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void updateChecked(bool? val){
      setState(() {
        isChecked = val ?? true;
      });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task1',
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough:null,
          color: Color(0xFF364F6B),
          fontSize: 20,
        ),
      ),
      leading: TaskCheckbox(isChecked: isChecked, checkedUpdateFunction: updateChecked,),
    );
  }
}


class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    required this.isChecked,
    required this.checkedUpdateFunction,
  });

  final bool isChecked;
  final Function(bool?) checkedUpdateFunction;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked, onChanged: checkedUpdateFunction,
      //   shape: OutlinedBorder(side: BorderSide(style: BorderStyle.solid)),
    );
  }
}
