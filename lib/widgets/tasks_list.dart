import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/TaskData.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  void Function(bool, int) callback;

  TasksList({required this.callback});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                callback(checkboxState!, index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
