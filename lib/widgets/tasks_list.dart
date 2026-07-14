import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Deepak"),
    Task(name: "Deepak 1"),
    Task(name: "Deepak 2"),
    Task(name: "Deepak 3"),
    Task(name: "Deepak 4"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].taskDone();
            });
          }
        );
      },
      itemCount: tasks.length,
    );
  }
}
