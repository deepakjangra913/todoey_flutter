import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  late List<Task> tasks;
  void Function(bool, int) callback;

  TasksList({required this.tasks, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (checkboxState) {
            callback(checkboxState!, index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
