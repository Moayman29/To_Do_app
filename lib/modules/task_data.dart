import 'package:flutter/foundation.dart';
import 'package:todoey_application/modules/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task('buy milk', false),
    Task('buy cheese', false),
    Task('buy bread', false),
  ];

  int getCount() {
    return tasks.length;
  }

  void addTaskCallback(newTaskTitle) {
    tasks.add(Task(newTaskTitle!, false));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
