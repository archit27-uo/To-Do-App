import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  late final String listTitle;
  late final Function(bool?) checkboxFunction;

  TaskTile(this.listTitle,this.isChecked, this.checkboxFunction);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$listTitle',
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough:null,
          color: Color(0xFF364F6B),
          fontSize: 20,
        ),
      ),
      leading: Checkbox(
        value: isChecked, onChanged: checkboxFunction,
        //   shape: OutlinedBorder(side: BorderSide(style: BorderStyle.solid)),
      )
    );
  }
}

