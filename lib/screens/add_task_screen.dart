import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Color(0xff757575),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(fontSize: 25, color: Colors.teal),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              onChanged: (newText) {
                text = newText;
              },
            ),
            FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(text);
                  Navigator.pop(context);
                },
                color: Colors.teal,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
