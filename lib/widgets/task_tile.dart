import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked;
final String taskTitle;
final Function cbCallback;

  TaskTile({this.isChecked, this.taskTitle, this.cbCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: cbCallback,
      ),
    );
  }
}


