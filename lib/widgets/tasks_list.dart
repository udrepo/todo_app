import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (context, taskData, child) {
          return  ListView.builder(
              itemBuilder: (context, index) =>
                 TaskTile(
                    taskTitle: taskData.tasks[index].name,
                    isChecked: taskData.tasks[index].isDone,
                    cbCallback: (cbState) {
                      taskData.tasks[index].toggleDone();
                    },
                  ),
              itemCount: taskData.tasks.length,
            );}
    );
  }
}

