import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/task_tile.dart';
import 'package:todoey_flutter/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskData.tasks[index].isDone,
                taskData.tasks[index].name,
                    (bool? checkStatus) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                () {
                  taskData.deleteTask(taskData.tasks[index]);
                }
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}