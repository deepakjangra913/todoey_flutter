import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks =>
      UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskName) {
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void markTaskAsDone(int index) {
    _tasks[index].taskDone();
    notifyListeners();
  }
}
