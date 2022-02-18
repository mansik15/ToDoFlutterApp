import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskName = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40,top: 40, bottom: 20, right: 40),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blueAccent
            ),),
            TextField(
              autofocus: true,
              cursorColor: Colors.blueAccent,
              onChanged: (newValue){
                newTaskName = newValue;
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskName);
                  Navigator.pop(context);
                },
                child: Text("Add")
            )
          ],
        ),
      ),
    );
  }
}
