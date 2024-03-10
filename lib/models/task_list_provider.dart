import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_provider.dart';

class TaskListProvider extends ChangeNotifier{

  List<TaskProvider> tasks = [];

 // int updateIndex = -1;
  void updateMethod(@required int index, String newVal){
      tasks[index].taskTitle = newVal;
      notifyListeners();
  }
  void addTask(TaskProvider task){
    tasks.add(task);
    notifyListeners();
  }

  void deleteElement(int index){
    if(tasks.length>index){
      tasks.removeAt(index);
    }
    notifyListeners();
  }

void toggleCheckbox(int index){
  if(tasks[index].isDone==true){
    tasks[index].isDone=false;
    notifyListeners();
  }else{
    tasks[index].isDone=true;
    notifyListeners();
  }
}
}