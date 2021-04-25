import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/task_tile.dart';


class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'do it', isDone: false),
    Task(name: 'do it2', isDone: false),
    Task(name: 'do it3', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        cbCallback: (cbState){
          setState(() {
            tasks[index].toggleDone();
          });
        },
      ),
      itemCount: tasks.length,
    );
  }
}

