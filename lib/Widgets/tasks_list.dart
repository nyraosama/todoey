
import 'package:flutter/material.dart';
import 'package:todoey_flutter/Widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/Modals/task_data.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context,index){
          final task=taskData.tasks[index];
          return TaskTile(
            TaskTitle:task.name ,
            isChecked:task.isDone ,
            checkboxCallback:(bool checkboxstate) {
              taskData.updateTask(task);
            },
            longPressCallback: (){
              taskData.DeleteTask(task);
            },
          );
        },itemCount: taskData.taskCount,
        );
      },
    );
  }
}