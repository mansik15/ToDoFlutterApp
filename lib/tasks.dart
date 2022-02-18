import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/add_task.dart';
import 'package:todoey_flutter/task_list.dart';
import 'package:todoey_flutter/tasks_data.dart';

class TasksScreen extends StatelessWidget {

  Widget buildBottomSheet(BuildContext context){
    return SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTaskScreen(),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               CircleAvatar(
                 backgroundColor: Colors.white,
                 child: Icon(
                   Icons.list,
                   size: 30.0,
                   color: Colors.blueAccent,
                 ),
                 radius: 30.0,
               ),
               SizedBox(
                 height: 10,
                 width: 10,
               ),
               Text("ToDoey",
               style: TextStyle(
                 fontSize: 40,
                 fontWeight: FontWeight.w700,
                 color: Colors.white
               ),),
               SizedBox(
                 height: 10,
                 width: 10,
               ),
               Text("${Provider.of<TaskData>(context).taskCount} Tasks",
               style: TextStyle(
                 fontSize: 18,
                 color: Colors.white,
                 fontWeight: FontWeight.w400
               ),
               )
             ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, isScrollControlled: true, builder: buildBottomSheet);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

