import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'do it', isDone: false),
    Task(name: 'do it2', isDone: false),
    Task(name: 'do it3', isDone: false),
  ];


  List<Task> get tasks => _tasks;

  void addTask(String newTask){
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }


  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}