import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks =>
      UnmodifiableListView(_tasks);

  void addDataIntoList(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void markTaskAsDone(int index) {
    _tasks[index].taskDone();
    notifyListeners();
  }
}
