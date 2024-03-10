import 'package:flutter/material.dart';

class TaskProvider{
  late final String _taskTitle;
  bool _isDone = false;

  TaskProvider(this._taskTitle);

  String get taskTitle => _taskTitle;
  bool get isDone => _isDone;
  //
  set taskTitle (String newVal) {
    _taskTitle = newVal;
  }
  set isDone (bool newVal) {
    _isDone = newVal;
  }





}