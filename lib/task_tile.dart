
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskName;
  final Function checkBoxCallBack;
  final Function deleteCallBack;

  TaskTile(this.isChecked, this.taskName, this.checkBoxCallBack, this.deleteCallBack);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallBack(),
      title: Text(taskName,
        style: TextStyle(
            decoration: isChecked? TextDecoration.lineThrough : null
        ),),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.blueAccent,
        onChanged: (newValue){
          checkBoxCallBack(newValue);
        },
      ),
    );
  }
}

