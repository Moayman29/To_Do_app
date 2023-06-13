// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskTiles extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() longpressCallback;

  const TaskTiles(this.taskTitle, this.isChecked, this.checkboxCallback, this.longpressCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longpressCallback,
    );
  }
}
