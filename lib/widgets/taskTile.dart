import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_list_provider.dart';
import 'package:to_do/screens/newTask_screen.dart';

class TaskTile extends StatefulWidget {

  final bool isChecked;
  final String listTitle;
  final int index;
  final Function(bool?) checkboxFunction;

  TaskTile(this.listTitle,this.isChecked, this.checkboxFunction, this.index);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    final providerTaskList = Provider.of<TaskListProvider>(context);
    return ListTile(
      title: Text(
        '${widget.listTitle}',
        style: TextStyle(
          decoration: widget.isChecked? TextDecoration.lineThrough:null,
          color: Color(0xFF364F6B),
          fontSize: 20,
        ),
      ),
      leading: Checkbox(
        value: widget.isChecked, onChanged: widget.checkboxFunction,
        //   shape: OutlinedBorder(side: BorderSide(style: BorderStyle.solid)),
      ),
        trailing: IconButton(
        icon: Icon(Icons.edit),
          onPressed: () {

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => newTask(index: widget.index,)));
          },
    ),
    );
  }
}

