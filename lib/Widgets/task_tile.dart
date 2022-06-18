import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String TaskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked,this.TaskTitle,this.checkboxCallback,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longPressCallback ,
      title: Text(
        TaskTitle,
        style: TextStyle(
          decoration:
          isChecked? TextDecoration.lineThrough:null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value:isChecked ,
        onChanged:checkboxCallback,
      ),
    );
  }
}



