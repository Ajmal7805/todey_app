import 'package:flutter/material.dart';
import 'package:todey_app/modals/taskmodal.dart';

class Taskdata extends ChangeNotifier {
   List<Task> tasklists = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy something'),
  ];
  int get taskcount{
    return tasklists.length;
  }
 
  void addtask(String newtasks){
    final tasks=Task(name: newtasks);
    tasklists.add(tasks);
    notifyListeners();

  }
  void updatetask(Task task){
    task.toggledone();
    notifyListeners();
  }
  void deletetask(Task task){
    tasklists.remove(task);
    notifyListeners();
  }
  
}