import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'models/TaskModel.dart';

class TaskData extends ChangeNotifier{
  List<TaskModel> _taskList = <TaskModel>[];

  void addTask(String newValue){
    final task = TaskModel(name: newValue);
    _taskList.add(task);
    notifyListeners();
  }

  int get taskCount{
    return _taskList.length;
  }

  UnmodifiableListView<TaskModel> get tasks{
    return UnmodifiableListView (_taskList);
  }

  void updateTask(TaskModel task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(TaskModel task){
   /* _taskList.remove(task);
    notifyListeners();*/
  }

}