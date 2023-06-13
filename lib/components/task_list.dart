// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_application/components/task_tiles.dart';
import 'package:todoey_application/modules/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTiles(
              taskData.tasks[index].name,
              taskData.tasks[index].isDone,
              (checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
              },
              () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.getCount(),
        );
      },
    );
  }
}
